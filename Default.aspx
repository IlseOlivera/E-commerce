<% @Page Language="C#" MasterPageFile="Main.master" AutoEventWireup="true" Src="Clientes.aspx.cs Inherits="Default" Title="E-Commerce" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Button ID="btnCliente" runat="server" Text="Clientes" OnClick="btnClientes_Click"></asp:Button>
<asp:Button ID="btnProductos" runat="server" Text="Productos" OnClick="btnProductos_Click" />
<asp:Button ID="btnIniciarSesion" runat="server" Text="Iniciar Sesion" OnClick="btnIniciarSecion_Click" />


