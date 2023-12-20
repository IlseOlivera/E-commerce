using System;
using System.Security.Cryptography;
using System.Text;
using System.Data;
using MySql.Data.MySqlClient;
using System.Web.UI;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Collections.Generic;

public partial class Default : Page
{
    public Repeater rptCarrito;
    public Label lblTotal;

    public DataTable carrito;
    protected void Page_Load(object sender, EventArgs e)
    {


        // get data from the db
        if (!IsPostBack)
        {
            getCarrito();

        }

    }

    public void btnBack_Click(object sender, EventArgs e)
    {
        // Navigate to default page
        Response.Redirect("Default.aspx");
    }

    public void btnEliminar_Click(object sender, EventArgs e)
    {
        // get the product id
        int productId = Convert.ToInt32(((Button)sender).CommandArgument);

        // get the user id
        int userId = Convert.ToInt32(Session["Id"]);

        // eliminate the product from the db
        // get the connection string
        string connStr = "Server=localhost;Database=ecommerce;Uid=root;Pwd=;";
        // create the connection
        MySqlConnection conn = new MySqlConnection(connStr);
        conn.Open();

        // get the quantity of the product
        string queryQuantity = "SELECT cantidad FROM usuario_productos WHERE UP_P_Id = " + productId + " AND UP_U_Id = " + userId + ";";
        // create the command
        MySqlCommand cmdQuantity = new MySqlCommand(queryQuantity, conn);
        // execute the command
        MySqlDataReader reader = cmdQuantity.ExecuteReader();
        // read the result
        reader.Read();
        // get the quantity
        int quantity = Convert.ToInt32(reader["cantidad"]);
        // close the reader
        reader.Close();

        string query = string.Empty;

        // validate if the quantity is greater than 1
        if (quantity > 1)
        {
            // update the quantity
            query = "UPDATE usuario_productos SET cantidad = (cantidad - 1) WHERE UP_P_Id = " + productId + " AND UP_U_Id = " + userId + ";";

        }
        else if (quantity <= 1)
        {
            // create the query
            query = "DELETE FROM usuario_productos WHERE UP_P_Id = " + productId + " AND UP_U_Id = " + userId + ";";
        }


        // create the command
        MySqlCommand cmd = new MySqlCommand(query, conn);
        // execute the command
        cmd.ExecuteNonQuery();
        // close the connection
        conn.Close();

        getCarrito();

        Response.Write("<script>alert('Producto eliminado del carrito');</script>");
    }


    public void getCarrito()
    {

        // get the user id
        int userId = Convert.ToInt32(Session["Id"]);

        // get the connection string
        string connStr = "Server=localhost;Database=ecommerce;Uid=root;Pwd=;";

        // create the connection
        MySqlConnection conn = new MySqlConnection(connStr);
        conn.Open();

        // create the query
        string query = "SELECT p.*, up.cantidad FROM usuario_productos up, productos p WHERE up.UP_U_Id = " + userId + " AND up.UP_P_Id = p.IdProductos;";

        // create the data adapter
        MySqlDataAdapter adapter = new MySqlDataAdapter(query, conn);

        // create the data table
        carrito = new DataTable();

        // fill the data table
        adapter.Fill(carrito);

        // close the connection
        conn.Close();

        // bind the data to the repeater
        rptCarrito.DataSource = carrito;
        rptCarrito.DataBind();

        // calculate the total of the shopping cart
        double total = 0;
        foreach (DataRow row in carrito.Rows)
        {
            total += Convert.ToDouble(row["precio"]);
        }

        // show the total in the label
        lblTotal.Text = total.ToString();
    }
}
