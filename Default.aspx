<% @Page Language="C#" MasterPageFile="Main.master" AutoEventWireup="true" Src="Default.aspx.cs" Inherits="Default" Title="E-Commerce" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="navigation" Runat="Server">
    <li>
        <asp:LinkButton ID="lnkClientes" runat="server" Text="Clientes" OnClick="btnClientes_Click"></asp:LinkButton>
    </li>
    <li>
        <asp:LinkButton ID="lnkProductos" runat="server" Text="Productos" OnClick="btnProductos_Click"></asp:LinkButton>
    </li>
    <li>
        <asp:LinkButton ID="lnkIniciarSesion" runat="server" Text="Iniciar Sesion" OnClick="btnIniciarSecion_Click"></asp:LinkButton>
    </li>

    <li>
        <asp:LinkButton ID="lnkCarrito" runat="server" OnClick="btnCarrito_Click">
            <i class="fa-solid fa-cart-shopping"></i>
        </asp:LinkButton>
    </li>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="container">
        <h1>e-commerce</h1>

        <section class="cards">
            <div class="card">
                <img src="https://picsum.photos/200" alt="" srcset="">
                <div class="info">
                    <p class="name">Laptop</p>
                    <p class="price">Precio: <span>$1000</span></p>
                    <input type="submit" value="Agregar al carrito" />
                </div>
            </div>
            <div class="card">
                <img src="https://picsum.photos/300" alt="" srcset="">
                <div class="info">
                    <p class="name">Laptop</p>
                    <p class="price">Precio: <span>$1000</span></p>
                    <input type="submit" value="Agregar al carrito" />
                </div>
            </div>

            <div class="card">
                <img src="https://picsum.photos/200" alt="" srcset="">
                <div class="info">
                    <p class="name">Laptop</p>
                    <p class="price">Precio: <span>$1000</span></p>
                    <input type="submit" value="Agregar al carrito" />
                </div>
            </div>

            <div class="card">
                <img src="https://picsum.photos/200/200" alt="" srcset="">
                <div class="info">
                    <p class="name">Laptop</p>
                    <p class="price">Precio: <span>$1000</span></p>
                    <input type="submit" value="Agregar al carrito" />
                </div>
            </div>
            <div class="card">
                <img src="https://picsum.photos/200/200" alt="" srcset="">
                <div class="info">
                    <p class="name">Laptop</p>
                    <p class="price">Precio: <span>$1000</span></p>
                    <input type="submit" value="Agregar al carrito" />
                </div>
            </div>
        </section>
    </div>
</asp:Content>