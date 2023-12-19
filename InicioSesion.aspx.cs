using System;
using System.Security.Cryptography;
using System.Text;
using System.Data;
using MySql.Data.MySqlClient;
using System.Web.UI;
using System.Configuration;

public partial class Default : Page
{
    private TextBox txtUsuario;
    private TextBox txtPassword;
    protected void Page_Load(object sender, EventArgs e)
    {
        // check if the user is logged in
        if (Session["user"] != null)
        {
            // navigate to home page
            Response.Redirect("Default.aspx");
        }

        // check if the user is admin
        if (Session["admin"] != null)
        {
            // if the user is admin, show the admin button
            if ((bool)Session["admin"])
            {
                Response.Redirect("Admin.aspx");
            }
        }
    }
    public void btnRegistrarse_Click(object sender, EventArgs e)
    {
        // navigate to default page
        Response.Redirect("Registrarse.aspx");
        
    }

    public void btnIniciarSesion_Click(object sender, EventArgs e)
    {
        // get the user and password
        string user = txtUsuario.Text;
        string password = txtPassword.Text;

        // hash the password with md5
        string hashedPassword = GetMd5Hash(password);

        // check if the user exists in the database
        if (userExists(user, hashedPassword))
        {
            // navigate to the home page
            Response.Redirect("Home.aspx");
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
        string connectionString = "Server=localhost;Database=prueba;Uid=root;Pwd=;";

        // connect to the database
        MySqlConnection conn = new MySqlConnection(connectionString);
        conn.Open();

        // query to check if the user exists
        string query = "SELECT * FROM usuarios WHERE usuario = '" + user + "' AND password = '" + password + "'";

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
            }
            else
            {
                Session["admin"] = false;
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


