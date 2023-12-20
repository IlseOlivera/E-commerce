using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Code executed when the page is loaded
    }
    public void btnProductosP_Click(object sender, EventArgs e)
    {
        // navigate to default page
        Response.Redirect("DefaultProveedor.aspx");
        
    }

    public void btnIniciarSecionP_Click(object sender, EventArgs e)
    {
        // Navigate to new register page
        Response.Redirect("InicioSesion.aspx");
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
    
    public void btnDelete_Click(object sender, EventArgs e)
    {
    }
    public void btnUpdate_Click(object sender, EventArgs e)
    {
    }
    public void btnDelete1_Click(object sender, EventArgs e)
    {
    }
    public void btnUpdate1_Click(object sender, EventArgs e)
    {
    }
    public void btnDelete2_Click(object sender, EventArgs e)
    {
    }
    public void btnUpdate2_Click(object sender, EventArgs e)
    {
    }
    public void btnAdd_Click(object sender, EventArgs e)
    {
        Response.Redirect("AgregarClientes.aspx");
    }


}

/*
public class Default : Page
{
    public DataGrid mClientes;
    public Label alert;
    public void Page_Load(object sender, EventArgs e)
    {
        if (Session["mClientes"] == null)
        {
            DataTable tClientes = new DataTable();
            tClientes.Columns.Add("Nombre");
            tClientes.Columns.Add("Apellido");
            tClientes.Columns.Add("Direccion");
            tClientes.Columns.Add("Telefono");

            mClientes.DataSource = tClientes;
            mClientes.DataBind();

            Session["mClientes"] = tClientes;

        }
        else
        {
            mClientes.DataSource = (DataTable) Session["mClientes"];
            mClientes.DataBind();
        }
        if (mClientes.Items.Count > 0)
        {
            alert.Visible = true;
            alert.Visible = false;
        }

    }
    public void btnAgregar_Click(object sender, EventArgs e)
    {
        DataTable tClientes = (DataTable)Session["mClientes"];
        DataRow rCliente = tClientes.NewRow();
        rCliente["Nombre"] = txtNombre.Text;
        rCliente["Apellido"] = txtApellido.Text;
        rCliente["Direccion"] = txtDireccion.Text;
        rCliente["Telefono"] = txtTelefono.Text;
        tClientes.Rows.Add(rCliente);
        Session["mClientes"] = tClientes;
        mClientes.DataSource = tClientes;
        mClientes.DataBind();
        txtNombre.Text = "";
        txtApellido.Text = "";
        txtDireccion.Text = "";
        txtTelefono.Text = "";
    }
}*/