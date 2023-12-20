<% @Page Language="C#" MasterPageFile="Main.master" AutoEventWireup="true" Src="AgregarClientes.aspx.cs" Inherits="Default" Title="E-Commerce" %>
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
    <h1>Agregar clientes</h1>
    <div class="container">
        <div class="container">
            <div class="registrarP">
                <div class="form-Rproducto">
                    <p> <strong> Foto del Cliente:</strong> <br>
                        <form action="users" method="post" enctype="multipart/form-data"><br>
                            <label for="imagen">Selecciona una imagen:</label><br>
                            <input type="file" id="imagen" name="imagen" accept="image/*"><br><br>
                            <input type="submit" value="Subir Imagen">
                          </form>
                    </p>
                </div>
                
                <form class="form-Rproducto">
                    <div>
                        <table>
                            <tr>
                                <th><asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label></th>
                                <th><asp:TextBox ID="txtNombre" runat="server" class="TextB"></asp:TextBox></th>
                            </tr>
                            <tr>
                                <th><asp:Label ID="lblCorreo" runat="server" Text="Correo:"></asp:Label></th>
                                <th><asp:TextBox ID="txtCorreo" runat="server" class="TextB"></asp:TextBox></th>
                            </tr>
                            <tr>
                                <th><asp:Label ID="lblContrasena" runat="server" Text="Contrasea:"></asp:Label></th>
                                <th><asp:TextBox ID="txtContrasena" runat="server" class="TextB"></asp:TextBox></th>
                            </tr>
                            <tr>
                                <th><asp:Label ID="lblTelefono" runat="server" Text="Telefono"></asp:Label></th>
                                <th><asp:TextBox ID="txtTelefono" runat="server" class="TextB"></asp:TextBox></th>
                            </tr>
                            <tr>
                                <th><asp:Label ID="lblDireccion" runat="server" Text="Direccion: "></asp:Label></th>
                                <th><asp:TextBox ID="txtDireccion" runat="server" class="TextB"></asp:TextBox></th>
                            </tr>
                            
                        </table>
                        
                    </div>
                    <asp:Button ID="btnRegistrar" runat="server" Text="Registrar cliente" OnClick="btnRegistrarC_Click" />
    
                    <asp:Label ID="lblError" runat="server" Text="">
                        
                    </asp:Label>
                </form>
            </div>
        </div>
    </div>
</asp:Content>