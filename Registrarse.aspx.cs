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
    public TextBox txtNombre;
    public TextBox txtApellidoM;
    public TextBox txtApellidoP;
    public TextBox txtEmail;
    public TextBox txtContrasena;
    protected void Page_Load(object sender, EventArgs e)
    {
        // Code executed when the page is loaded
    }

    public void btnIniciarSecion_Click(object sender, EventArgs e)
    {
        // Navigate to new register page
        Response.Redirect("InicioSesion.aspx");
    }

    public void btnRegistarse_Click(object sender, EventArgs e)
    {
        // encrypt the password
        string hashedPassword = this.GetMd5Hash(txtContrasena.Text);

        // insert the user in the database
        // connection string
        string connectionString = "Server=localhost;Database=ecommerce;Uid=root;Pwd=;";
        // query
        string query = "INSERT INTO usuarios (correo, password, nombre, apellido_p, apellido_m) VALUES ('" + txtEmail.Text + "', '" + hashedPassword + "', '" + txtNombre.Text + "', '" + txtApellidoP.Text + "', '" + txtApellidoM.Text + "')";

        // connect to the database
        MySqlConnection conn = new MySqlConnection(connectionString);
        conn.Open();

        // execute the query
        MySqlCommand command = new MySqlCommand(query, conn);
        command.ExecuteNonQuery();

        // close the connection
        conn.Close();

        // Navigate to new register page
        Response.Redirect("InicioSesion.aspx");


    }

    public void btnHome_Click(object sender, EventArgs e)
    {
        // Navigate to new register page
        Response.Redirect("Default.aspx");
    }

    public string GetMd5Hash(string input)
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
