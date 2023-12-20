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
    public Label lblNombreUsuario;
    public LinkButton lnkCerrarSesion;
    public LinkButton lnkCarrito;
    public LinkButton lnkIniciarSesion;
    protected void Page_Load(object sender, EventArgs e)
    {
        // check if the user is logged in
        if (Session["user"] != null)
        {
            // show the user name
            lblNombreUsuario.Text = Session["userName"].ToString() + " " + Session["userLastName"].ToString();

            // show the close session button
            lnkCerrarSesion.Visible = true;

            // show the carrito button
            lnkCarrito.Visible = true;

            // hide the iniciar sesion button
            lnkIniciarSesion.Visible = false;
        } else
        {
            // hide the close session button
            lnkCerrarSesion.Visible = false;

            // hide the carrito button
            lnkCarrito.Visible = false;

            // show the iniciar sesion button
            lnkIniciarSesion.Visible = true;
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

    public void btnIniciarSecion_Click(object sender, EventArgs e)
    {
        // Navigate to new register page
        Response.Redirect("InicioSesion.aspx");
    }

    public void btnCarrito_Click(object sender, EventArgs e)
    {
        // Navigate to search page
        Response.Redirect("Carrito.aspx");
    }


    public void btnCerrarSesion_Click(object sender, EventArgs e)
    {
        // close the session
        Session.Remove("user");
        Session.Remove("admin");

        // navigate to default page
        Response.Redirect("Default.aspx");

    }
}
