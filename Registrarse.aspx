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
                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:Label ID="lblContrasena" runat="server" Text="Contrasena"></asp:Label>
                    <asp:TextBox ID="txtContrasena" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    <asp:Label ID="lblApellidoM" runat="server" Text="Apellido Materno"></asp:Label>
                    <asp:TextBox ID="txtApellidoM" runat="server"></asp:TextBox>
                    <asp:Label ID="lblApellidoP" runat="server" Text="Apellido Paterno"></asp:Label>
                    <asp:TextBox ID="txtApellidoP" runat="server"></asp:TextBox>

                    <asp:Button ID="btnRegistrar" runat="server" Text="Registarse" OnClick="btnRegistarse_Click" />
                    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>