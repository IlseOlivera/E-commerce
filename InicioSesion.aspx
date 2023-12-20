<% @Page Language="C#" MasterPageFile="Main.master" AutoEventWireup="true" Src="InicioSesion.aspx.cs" Inherits="Default" Title="E-Commerce" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="navigation" Runat="Server">
    <li>
        <asp:LinkButton ID="lnkHome" runat="server" Text="Home" OnClick="btnHome_Click"></asp:LinkButton>
    </li>
    <li>
        <asp:LinkButton ID="lnkRegistrase" runat="server" Text="Registrarse" OnClick="btnRegistrarse_Click"></asp:LinkButton>
    </li>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="container">
        <div class="login">
            <h1>Inicio de Sesion</h1>

                <!-- label for the success message -->
                <asp:Label ID="lblSuccess" runat="server" Text=""></asp:Label>

                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

                <asp:Label ID="lblPassword" runat="server" Text="Contrasena"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>

                <asp:Button ID="btnIniciarSesion" runat="server" Text="Iniciar Sesion" OnClick="btnIniciarSesion_Click" />

                <!-- label for the error message -->
                <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>