using System;
using System.Security.Cryptography;
using System.Text;
using System.Data;
using MySql.Data.MySqlClient;
using System.Web.UI;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class Default : Page
{
    public TextBox txtEmail;
    public TextBox txtPassword;
    public Label lblError;
    public Label lblSuccess;

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
    public void btnRegistrarse_Click(object sender, EventArgs e)
    {
        // navigate to default page
        Response.Redirect("Registrarse.aspx");
        
    }

    public void btnIniciarSesion_Click(object sender, EventArgs e)
    {
        // get the user and password
        string user = txtEmail.Text;
        string password = txtPassword.Text;

        // hash the password with md5
        string hashedPassword = this.GetMd5Hash(password);

        // show the values
        lblError.Text = user + " " + hashedPassword;

        // check if the user exists in the database
        if (userExists(user, hashedPassword))
        {
            // navigate to the home page
            Response.Redirect("Default.aspx");
        }
        else
        {
            // show error message
            lblError.Text = "Usuario o contraseña incorrectos";
        }
        
        
    }

    public void btnHome_Click(object sender, EventArgs e)
    {
        // Navigate to new register page
        Response.Redirect("Default.aspx");
    }

    private bool userExists(string user, string password)
    {
        // connection string
        string connectionString = "Server=localhost;Database=ecommerce;Uid=root;Pwd=;";

        // connect to the database
        MySqlConnection conn = new MySqlConnection(connectionString);
        conn.Open();

        // query to check if the user exists
        string query = "SELECT * FROM usuarios WHERE correo = '" + user + "' AND password = '" + password + "'";

        // execute the query
        MySqlCommand cmd = new MySqlCommand(query, conn);
        MySqlDataReader reader = cmd.ExecuteReader();

        // if the user exists return true
        if (reader.Read())
        {
            // if the id is equal to 1, the user is the admin
            if (reader.GetInt32(0) == 1)
            {
                Session["admin"] = true;

                // save the user id in the session
                Session["user"] = reader.GetInt32(0);
                // save the user information in the session
                Session["userEmail"] = reader.GetString(1);
                Session["userName"] = reader.GetString(3);
                Session["userLastName"] = reader.GetString(4) + " " + reader.GetString(5);

                // redirect to admin page
                Response.Redirect("Admin.aspx");
            }
            else
            {
                Session["user"] = true;

                // save the user id in the session
                Session["user"] = reader.GetInt32(0);
                // save the user information in the session
                Session["userEmail"] = reader.GetString(1);
                Session["userName"] = reader.GetString(3);
                Session["userLastName"] = reader.GetString(4) + " " + reader.GetString(5);
            }

            // close the connection
            conn.Close();
            return true;
        }
        // else return false
        return false;
    }

    private string GetMd5Hash(string input)
    {
        using (MD5 md5Hash = MD5.Create())
        {
            byte[] data = md5Hash.ComputeHash(Encoding.UTF8.GetBytes(input));

            StringBuilder builder = new StringBuilder();

            for (int i = 0; i < data.Length; i++)
            {
                builder.Append(data[i].ToString("x2"));
            }

            return builder.ToString();
        }
    }
}


