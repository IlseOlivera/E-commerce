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
    public Label lblNombreUsuario;
    public LinkButton lnkCerrarSesion;
    public LinkButton lnkCarrito;
    public LinkButton lnkIniciarSesion;
    public Repeater rptProductos;

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
        }
        else
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
                Response.Redirect("DefaultProveedor.aspx");
            }
        }

        // get all the products
        if (!IsPostBack)
        {
            getAllProducts();
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

    public void getAllProducts()
    {
        // get the connection string
        string connStr = "Server=localhost;Database=ecommerce;Uid=root;Pwd=;";

        // create a new connection
        MySqlConnection conn = new MySqlConnection(connStr);
        conn.Open();

        // query to get all the products
        string query = "SELECT * FROM productos";

        // create a new data adapter based on the specified query
        MySqlDataAdapter adapter = new MySqlDataAdapter(query, conn);

        // create a new data table
        DataTable dt = new DataTable();

        // fill the data table and dispose the data adapter
        adapter.Fill(dt);

        // close the connection
        conn.Close();

        // set the data source of the repeater
        rptProductos.DataSource = dt;

        // bind the data
        rptProductos.DataBind();
    }

    public void btnAgregarCarrito_Click(object sender, EventArgs e)
    {
        //valite if the user is logged in
        if (Session["user"] == null)
        {
            // show the error message
            Response.Write("<script>alert('Debe iniciar sesion para agregar al carrito')</script>");
            return;
        }

        // get the id of the product
        int idProducto = Convert.ToInt32(((Button)sender).CommandArgument);

        // save the product in the database
        // get the connection string
        string connStr = "Server=localhost;Database=ecommerce;Uid=root;Pwd=;";

        // create a new connection
        MySqlConnection conn = new MySqlConnection(connStr);
        conn.Open();

        // get the id of the user
        int idUsuario = (int)Session["Id"];

        string message = string.Empty;

        // validate if the product is already in the shopping cart
        if (validateCardShopping(idProducto, idUsuario))
        {
            // query to update the product in the carrito
            string query = "UPDATE usuario_productos SET cantidad = (cantidad + 1) WHERE UP_U_Id = " + idUsuario + " AND UP_P_Id = " + idProducto + ";";

            // execute the query
            MySqlCommand cmd = new MySqlCommand(query, conn);
            cmd.ExecuteNonQuery();

            message = "Se agrego uno mas al carrito";
        }
        else
        {
            // query to insert the product in the carrito
            string query = "INSERT INTO usuario_productos (UP_U_Id, UP_P_Id, cantidad) VALUES (" + idUsuario + ", " + idProducto + ", 1)";

            // execute the query
            MySqlCommand cmd = new MySqlCommand(query, conn);
            cmd.ExecuteNonQuery();

            message = "Producto agregado al carrito";
        }

        // close the connection
        conn.Close();

        // show the success message
        Response.Write("<script>alert('" + message +"')</script>");
    }

    public bool validateCardShopping(int idProducto, int idUsuario)
    {
        // get the connection string
        string connStr = "Server=localhost;Database=ecommerce;Uid=root;Pwd=;";

        // create the connection
        MySqlConnection conn = new MySqlConnection(connStr);
        conn.Open();

        // create the query
        string query = "SELECT * FROM usuario_productos WHERE UP_U_Id = " + idUsuario + " AND UP_P_Id = " + idProducto + ";";

        // create the data adapter
        MySqlDataAdapter adapter = new MySqlDataAdapter(query, conn);

        // create the data table
        DataTable dt = new DataTable();

        // fill the data table
        adapter.Fill(dt);

        // close the connection
        conn.Close();

        // validate if the product is already in the shopping cart
        if (dt.Rows.Count > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

}