<% @Page Language="C#" MasterPageFile="Main.master" AutoEventWireup="true" Src="Carrito.aspx.cs" Inherits="Default" Title="E-Commerce" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="navigation" Runat="Server">
  <li>
    <asp:LinkButton ID="lnkBack" runat="server" OnClick="btnBack_Click">
      Regresar
    </asp:LinkButton>
  </li>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
  <div class="container">
    <h1>Carrito</h1>

    <div class="carrito">
      <div class="lista-carrito">
        <asp:Repeater ID="rptCarrito" runat="server">
          <ItemTemplate>
            <div class="item">
              <img src="https://picsum.photos/200" alt="" srcset="" />
              <div class="info">
                <p class="name"><%# Eval("nombre") %></p>
                <p class="price">Precio: <span>$<%# Eval("precio") %></span></p>
              </div>
              <div class="actions">
                <input type="number" value='<%# Eval("cantidad") %>' disabled/>
                <asp:Button runat="server" Text="Eliminar" OnClick="btnEliminar_Click" CommandArgument='<%# Eval("IdProductos") %>' />
              </div>
            </div>
          </ItemTemplate>
        </asp:Repeater>
      </div>

      <section class="total">
        <p>Total: 
          <asp:Label ID="lblTotal" runat="server" Text="0"></asp:Label>
        </p>
        <button type="submit">
          Confirmar Compra <i class="fa-solid fa-dollar-sign"></i>
        </button>
      </section>
    </div>
  </div>
</asp:Content>
