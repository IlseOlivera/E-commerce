<% @Page Language="C#" MasterPageFile="Main.master" AutoEventWireup="true" Src="Default.aspx.cs" Inherits="Default" Title="E-Commerce" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="navigation" Runat="Server">
    <td>
        <asp:LinkButton ID="lnkClientes" runat="server" Text="Clientes" OnClick="btnClientes_Click"></asp:LinkButton>
    </td>
    <td>
        <asp:LinkButton ID="lnkProductos" runat="server" Text="Productos" OnClick="btnProductos_Click"></asp:LinkButton>
    </td>
    <td>
        <asp:LinkButton ID="lnkIniciarSesion" runat="server" Text="Iniciar Sesion" OnClick="btnIniciarSecion_Click"></asp:LinkButton>
    </td>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <asp:DataGrid ID="mClientes" runat="server" AutoGenerateColumns="true"></asp:DataGrid>
</asp:Content>