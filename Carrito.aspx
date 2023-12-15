<% @Page Language="C#" MasterPageFile="Main.master" AutoEventWireup="true"
Src="Carrito.aspx.cs" Inherits="Default" Title="E-Commerce" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="navigation" Runat="Server">
  <li>
    <asp:LinkButton
      ID="lnkClientes"
      runat="server"
      Text="Clientes"
      OnClick="btnClientes_Click"
    ></asp:LinkButton>
  </li>
  <li>
    <asp:LinkButton
      ID="lnkProductos"
      runat="server"
      Text="Productos"
      OnClick="btnProductos_Click"
    ></asp:LinkButton>
  </li>
  <li>
    <asp:LinkButton
      ID="lnkIniciarSesion"
      runat="server"
      Text="Iniciar Sesion"
      OnClick="btnIniciarSecion_Click"
    ></asp:LinkButton>
  </li>

  <li>
    <asp:LinkButton ID="lnkCarrito" runat="server" OnClick="btnCarrito_Click">
      <i class="fa-solid fa-cart-shopping"></i>
    </asp:LinkButton>
  </li>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
  <div class="container">
    <h1>Carrito</h1>

    <div class="carrito">
      <section class="lista-carrito">
        <div class="item">
          <img src="https://picsum.photos/200" alt="" srcset="" />
          <div class="info">
            <p class="name">Laptop</p>
            <p class="price">Precio: <span>$1000</span></p>
          </div>
          <div class="actions">
            <input type="number" value="1" />
            <button type="submit" >Eliminar
            <i class="fa-solid fa-trash"></i></button>

          </div>
        </div>
      </section>

      <section class="total">
        <p>Total: <span>$1000</span></p>
        <button type="submit">Confirmar Compra <i class="fa-solid fa-dollar-sign"></i></button>
      </section>
    </div>
  </div>
</asp:Content>
