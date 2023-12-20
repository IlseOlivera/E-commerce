<% @Page Language="C#" MasterPageFile="Main.master" AutoEventWireup="true" Src="Admin.aspx.cs" Inherits="Default" Title="E-Commerce" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="navigation" Runat="Server">
    <li>
        <asp:LinkButton ID="lnkRegistrase" runat="server" Text="Cerrar sesion" OnClick="btnCerrarSesion_Click"></asp:LinkButton>
    </li>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="container">
        <h1>Admin</h1>
    </div>
</asp:Content>