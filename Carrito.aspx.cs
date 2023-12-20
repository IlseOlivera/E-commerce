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
    public void btnDelete_Click(object sender, EventArgs e)
    {
        // Navigate to new register page
        Response.Redirect("EliminarClientes.aspx");
    }
    public void btnDelete1_Click(object sender, EventArgs e)
    {
        // Navigate to new register page
        Response.Redirect("EliminarClientes.aspx");
    }
    public void btnDelete2_Click(object sender, EventArgs e)
    {
        // Navigate to new register page
        Response.Redirect("EliminarClientes.aspx");
    }
    public void btnUpdate_Click(object sender, EventArgs e)
    {
        // Navigate to new register page
        Response.Redirect("ActualizarClientes.aspx");
    }
    public void btnUpdate1_Click(object sender, EventArgs e)
    {
        // Navigate to new register page
        Response.Redirect("ActualizarClientes.aspx");
    }
    public void btnUpdate2_Click(object sender, EventArgs e)
    {
        // Navigate to new register page
        Response.Redirect("ActualizarClientes.aspx");
    }

    public void btnIniciarSecion_Click(object sender, EventArgs e)
    {
        // Navigate to new register page
        Response.Redirect("InicioSesion.aspx");
    }

    public void btnClientes_Click(object sender, EventArgs e)
    {
        // Navigate to search page
        Response.Redirect("Search.aspx");
    }

    public void btnCarrito_Click(object sender, EventArgs e)
    {
        // Navigate to search page
        Response.Redirect("Search.aspx");
    }
}
