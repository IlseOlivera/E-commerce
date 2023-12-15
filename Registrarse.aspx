<% @Page Language="C#" MasterPageFile="Main.master" AutoEventWireup="true" Src="Registrarse.aspx.cs" Inherits="Default" Title="E-Commerce" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="navigation" Runat="Server">
    <li>
        <asp:LinkButton ID="lnkHome" runat="server" Text="Home" OnClick="btnHome_Click"></asp:LinkButton>
    </li>
    <li>
        <asp:LinkButton ID="lnkIniciarSesion" runat="server" Text="Iniciar Sesion" OnClick="btnIniciarSecion_Click"></asp:LinkButton>
    </li>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="container">
        <div class="container">
            <div class="registrarse">
                <h1>Registarse</h1>
                    <asp:Label ID="lblUsuario" runat="server" Text="Usuario"></asp:Label>
                    <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                    <asp:Label ID="lblContrasena" runat="server" Text="Contrasena"></asp:Label>
                    <asp:TextBox ID="txtContrasena" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:Button ID="btnIniciarSesion" runat="server" Text="Registarse" OnClick="btnRegistarse_Click" />
    
                    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>