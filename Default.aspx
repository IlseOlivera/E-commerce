<% @Page Language="C#" MasterPageFile="Main.master" AutoEventWireup="true" Src="Default.aspx.cs" Inherits="Default" Title="E-Commerce" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="navigation" Runat="Server">
     <li>
        <asp:LinkButton ID="lnkCarrito" runat="server" OnClick="btnCarrito_Click">
            <i class="fa-solid fa-cart-shopping"></i>
        </asp:LinkButton>
    </li>
    <!-- label to show the name of the user when the session was start -->
    <li>
        <asp:Label ID="lblNombreUsuario" runat="server" Text=""></asp:Label>
    </li>
    <li>
        <asp:LinkButton ID="lnkCerrarSesion" runat="server" Text="Cerrar Sesion" OnClick="btnCerrarSesion_Click">
        </asp:LinkButton>
    </li>
    <li>
        <asp:LinkButton ID="lnkIniciarSesion" runat="server" Text="Iniciar Sesion" OnClick="btnIniciarSecion_Click"></asp:LinkButton>
    </li>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="container">
        <h1>e-commerce</h1>

        <div class="cards" runat="server" id="cardsContainer">
            <asp:Repeater ID="rptProductos" runat="server">
                <ItemTemplate>
                    <div class="card">
                        <img src="https://picsum.photos/200" alt="" srcset="">
                        <div class="info">
                            <p class="name"><%# Eval("nombre") %></p>
                            <p class="price">Precio: <span>$<%# Eval("Precio") %></span></p>
                            <asp:Button runat="server" Text="Agregar al carrito" OnClick="ObtenerDetalles_Click" CommandArgument='<%# Eval("IdProductos") %>'>
                            </asp:Button>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

            
        </div>
    </div>
</asp:Content>