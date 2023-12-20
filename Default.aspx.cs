using System;
using System.Web.UI;

public partial class Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Code executed when the page is loaded
    }
    public void btnProductos_Click(object sender, EventArgs e)
    {
        // navigate to default page
        Response.Redirect("Default.aspx");
        
    }

    public void btnIniciarSecion_Click(object sender, EventArgs e)
    {
        // Navigate to new register page
        Response.Redirect("InicioSesion.aspx");
    }

    public void btnClientes_Click(object sender, EventArgs e)
    {
        // Navigate to search page
        Response.Redirect("Clientes.aspx");
    }

    public void btnCarrito_Click(object sender, EventArgs e)
    {
        // Navigate to search page
        Response.Redirect("Carrito.aspx");
    }
}
