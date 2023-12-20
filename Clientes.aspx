<% @Page Language="C#" MasterPageFile="Main.master" AutoEventWireup="true" Src="Clientes.aspx.cs" Inherits="Default" Title="E-Commerce" %>

    

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

    <div class="container">
        <h1>Clientes</h1>
            <h2 class="registrarC"><asp:LinkButton ID="btnAdd" runat="server" OnClick="btnAdd_Click">Agregar clientes</asp:LinkButton></h2>
        
        <section class="cards">
            <div class="card">
                <img src="img/users/York.jpeg" alt="" srcset="" class="img-prod">
                <div class="info">
                    <p class="nombre">Nombre: Acua Jimenez York-am Malkenu</p>
                    <p class="correo">Correo: AcuaJ45@gmail.com</p>
                    <p class="telefono">Telefono: <span>55-89-00-67-12</span></p>
                    <p class="direccion">Direccion: Av. Te</p>               
                    <asp:LinkButton ID="btnDelete" runat="server" OnClick="btnDelete_Click">
                            <i class="fa-solid fa-trash"></i>
                    </asp:LinkButton>
                    <asp:LinkButton ID="btnUpdate" runat="server" OnClick="btnUpdate_Click">
                        <i class="fa-solid fa-pen-to-square"></i>
                    </asp:LinkButton>
                </div>
            </div>
            <div class="card">
                <img src="img/users/Ilse.jpeg" alt="" srcset="" class="img-prod">
                <div class="info">
                    <p class="nombre">Nombre: Olivera Bruno Ilse Sarahi</p>
                    <p class="correo">Correo: IlseOlivera@gmail.com</p>
                    <p class="telefono">Telefono: <span>55-23-45-87-00</span></p>
                    <p class="direccion">Direccion: Av. Te</p> 
                    <asp:LinkButton ID="btnDelete1" runat="server" OnClick="btnDelete1_Click">
                            <i class="fa-solid fa-trash"></i>
                    </asp:LinkButton>
                    <asp:LinkButton ID="btnUpdate1" runat="server" OnClick="btnUpdate1_Click">
                        <i class="fa-solid fa-pen-to-square"></i>
                    </asp:LinkButton>
                </div>
            </div>

            <div class="card">
                <img src="img/users/Natalia.jpeg" alt="" srcset="" class="img-prod">
                <div class="info">
                    <p class="nombre">Nombre: Hernandez Herrera Natalia Paola</p>
                    <p class="correo">Correo: HNatPao@gmail.com</p>
                    <p class="telefono">Telefono: <span>55-78-40-87-00</span></p>
                    <p class="direccion">Direccion: Av. Te</p> 
                    <asp:LinkButton ID="btnDelete2" runat="server" OnClick="btnDelete2_Click">
                            <i class="fa-solid fa-trash"></i>
                    </asp:LinkButton>
                    <asp:LinkButton ID="btnUpdate2" runat="server" OnClick="btnUpdate2_Click">
                        <i class="fa-solid fa-pen-to-square"></i>
                    </asp:LinkButton>                 
                </div>
            </div>
        </section>
    </div>
</asp:Content>