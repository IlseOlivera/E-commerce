<% @Page Language="C#" MasterPageFile="Main.master" AutoEventWireup="true" Src="ActualizarProductos.aspx.cs" Inherits="Default" Title="E-Commerce" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="navigation" Runat="Server">
    <li>
        <asp:LinkButton ID="lnkClientesP" runat="server" Text="Clientes" OnClick="btnClientesP_Click"></asp:LinkButton>
    </li>
    <li>
        <asp:LinkButton ID="lnkProductosP" runat="server" Text="Productos" OnClick="btnProductosP_Click"></asp:LinkButton>
    </li>
    <li>
        <asp:LinkButton ID="lnkIniciarSesionP" runat="server" Text="Iniciar Sesion" OnClick="btnIniciarSecionP_Click"></asp:LinkButton>
    </li>

    <li>
        <asp:LinkButton ID="lnkCarritoP" runat="server" OnClick="btnCarritoP_Click">
            <i class="fa-solid fa-cart-shopping"></i>
        </asp:LinkButton>
    </li>

</asp:Content>
    


<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <h1>Actualizar productos</h1>
    <div class="container">
        <div class="container">
            <div class="registrarP">
                <div class="form-Rproducto">
                    <p> <strong> Foto del producto:</strong> <br>
                        <form action="users" method="post" enctype="multipart/form-data"><br>
                            <label for="imagen">Selecciona una imagen:</label><br>
                            <input type="file" id="imagen" name="imagen" accept="image/*"><br><br>
                            <input type="submit" value="Subir Imagen">
                          </form>
                    </p>
                </div>
                
                <form class="form-Rproducto">
                    <div>
                        <-- EXTRAER INFORMACIÓN DE LA BD -->
                        <table>
                            <tr>
                                <th><asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label></th>
                                <th><asp:TextBox ID="txtNombre" runat="server" class="TextB"></asp:TextBox></th>
                            </tr>
                            <tr>
                                <th><asp:Label ID="lblUnidades" runat="server" Text="Unidades"></asp:Label></th>
                                <th><asp:TextBox ID="txtUnidades" runat="server" class="TextB"></asp:TextBox></th>
                            </tr>
                            <tr>
                                <th><asp:Label ID="lblPrecio" runat="server" Text="Precio"></asp:Label></th>
                                <th><asp:TextBox ID="txtPrecio" runat="server" class="TextB"></asp:TextBox></th>
                            </tr>
                            <tr>
                                <th><asp:Label ID="lblMarca" runat="server" Text="Marca"></asp:Label></th>
                                <th><asp:TextBox ID="txtMarca" runat="server" class="TextB"></asp:TextBox></th>
                            </tr>
                            <tr>
                                <th><asp:Label ID="lblModelo" runat="server" Text="Modelo"></asp:Label></th>
                                <th><asp:TextBox ID="txtModelo" runat="server" class="TextB"></asp:TextBox></th>
                            </tr>
                            <tr>
                                <th><asp:Label ID="lblColor" runat="server" Text="Color"></asp:Label></th>
                                <th><asp:TextBox ID="txtColor" runat="server" class="TextB"></asp:TextBox></th>
                            </tr>
                            <tr>
                                <th><asp:Label ID="lblDescripcion" runat="server" Text="Descripcion"></asp:Label></th>
                                <th><asp:TextBox ID="txtDescripcion" runat="server" class="TextB"></asp:TextBox></th>
                            </tr>
                            
                        </table>
                        
                    </div>
                    <asp:Button ID="btnActualizar" runat="server" Text="Actualiza producto" OnClick="btnActualizarP_Click" />
    
                    <asp:Label ID="lblError" runat="server" Text="">
                        
                    </asp:Label>
                </form>
            </div>
        </div>
    </div>
</asp:Content>