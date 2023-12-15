using System;
using System.Web.UI;

public partial class Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Code executed when the page is loaded
    }

    protected void Button_Click(object sender, EventArgs e)
    {
        // Code executed when a button is clicked
    }

    // Other methods and event handlers can be added here
    public void btnProductos_Click(object sender, EventArgs e)
    {
        // navigate to default page
        Response.Redirect("Default.aspx");
        
    }

    public void btnIniciarSecion_Click(object sender, EventArgs e)
    {
        // Navigate to new register page
        Response.Redirect("NewRegister.aspx");
    }

    public void btnClientes_Click(object sender, EventArgs e)
    {
        // Navigate to search page
        Response.Redirect("Search.aspx");
    }
}
