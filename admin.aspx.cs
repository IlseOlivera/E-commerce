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
    public void btnCerrarSesion_Click(object sender, EventArgs e)
    {
        // close the session
        Session["user"] = null;
        Session["admin"] = null;

        // navigate to default page
        Response.Redirect("Default.aspx");
        
    }
}


