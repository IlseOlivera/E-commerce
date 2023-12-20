using System;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Code executed when the page is loaded
    }

    public void btnIniciarSecionP_Click(object sender, EventArgs e)
    {
        // Navigate to new register page
        Response.Redirect("InicioSesion.aspx");
    }

    public void btnRegistarse_Click(object sender, EventArgs e)
    {
        // Navigate to new register page
        Response.Redirect("InicioSesion.aspx");
    }

    public void btnHome_Click(object sender, EventArgs e)
    {
        // Navigate to new register page
        Response.Redirect("Default.aspx");
    }
    public void btnProductosP_Click(object sender, EventArgs e)
    {
        // navigate to default page
        Response.Redirect("Default.aspx");
        
    }

    public void btnClientesP_Click(object sender, EventArgs e)
    {
        // Navigate to search page
        Response.Redirect("Clientes.aspx");
    }

    public void btnCarritoP_Click(object sender, EventArgs e)
    {
        // Navigate to search page
        Response.Redirect("Carrito.aspx");
    }
    public void btnRegistrarP_Click(object sender, EventArgs e)
    {
        // Navigate to search page
        Response.Write("<script>alert('Producto registrado');</script>");
    }
}
