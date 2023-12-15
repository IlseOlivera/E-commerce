using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

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
        /*DataTable tClientes = (DataTable)Session["mClientes"];
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
        txtTelefono.Text = "";*/
    }
}