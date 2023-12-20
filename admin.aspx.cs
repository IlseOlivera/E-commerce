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

    protected void Page_Load(object sender, EventArgs e)
    {
        // check if the user is not logged as admin
        if (Session["admin"] == null)
        {
            // if the user is not logged as admin, redirect to default page
            Response.Redirect("Default.aspx");
        }

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


