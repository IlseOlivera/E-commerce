<% @Page Language="C#" MasterPageFile="Main.master" AutoEventWireup="true" Src="DefaultProveedor.aspx.cs" Inherits="Default" Title="E-Commerce" %>
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
    <h1>Mis productos</h1>
        
            <h2 class="registrarProductos"><asp:LinkButton ID="btnAdd" runat="server" OnClick="btnAdd_Click">Agregar producto</asp:LinkButton></h2><br>    
        
    <div class="productos">

        <section class="cards-productos">
            <div class="item">
                <img src="img/productos/lap-nitro.jpg" alt="" srcset="" class="img-prod">
                <div class="info">
                    <p class="nombre">Laptop Acer-Nitro</p>
                    <p class="unidades">Unidades: 3</p>
                    <p class="precio">Precio: <span>$19,057.95 MX</span></p>
                    <p class="marca">Marca: Acer</p>
                    <p class="modelo">Modelo: Nitro</p>
                    <p class="modelo">Color: Negro Obsidiana</p>
                    <p class="descripcion">Descripcinn: 7,3" Laptop Gaming - Intel Core i5 - <br> 8GB - NVIDIA GeForce GTX 1650 Ti 4GB - SSD de 512GB - Pantalla IPS FHD</p>
                                       
                        <asp:LinkButton ID="btnDelete" runat="server" OnClick="btnDelete_Click">
                            <i class="fa-solid fa-trash"></i>
                        </asp:LinkButton>
                        <asp:LinkButton ID="btnUpdate" runat="server" OnClick="btnUpdate_Click">
                            <i class="fa-solid fa-pen-to-square"></i>
                        </asp:LinkButton>
                </div>
            </div>
            <div class="item">
                <img src="img/productos/lap-hp-.jpg" alt="" srcset=""  class="img-prod">
                <div class="info">
                    <p class="nombre">Laptop HP</p>
                    <p class="unidades">Unidades: 5</p>
                    <p class="precio">Precio: <span>$9,388.00 MX</span></p>
                    <p class="marca">Marca: HP</p>
                    <p class="modelo">Modelo: 15-fc0000la</p>
                    <p class="modelo">Color: Dorado</p>
                    <p class="descripcion">Descripcion: Windows 11 Home, AMD Ryzen 3, 8GB RAM, 512GB SSD, FHD 15.6"                 .                        </p>
                    <asp:LinkButton ID="btnDelete1" runat="server" OnClick="btnDelete1_Click">
                        <i class="fa-solid fa-trash"></i>
                        </asp:LinkButton>
                        <asp:LinkButton ID="btnUpdate1" runat="server" OnClick="btnUpdate1_Click">
                            <i class="fa-solid fa-pen-to-square"></i>
                        </asp:LinkButton>                  
                </div>
            </div>
            <div class="item">
                <section>
                    <img src="img/productos/asus.jpg" alt="" srcset=""  class="img-prod">
                </section>
                <div class="info">
                    <p class="nombre">Laptop Asus Chromebook</p>
                        <p class="unidades">Unidades: 5</p>
                        <p class="precio">Precio: <span>$5,199.00 MX</span></p>
                        <p class="marca">Marca: Asus</p>
                        <p class="modelo">Modelo: Plateado transparente</p>
                        <p class="modelo">Color: Dorado</p>
                        <p class="descripcion">Descipcion: CX1-15.6" / CX1500CKA-BR0102 / Intel Celeron / 8GB en RAM / 128GB + 100GB</p>
                    <asp:LinkButton ID="btnDelete2" runat="server" OnClick="btnDelete2_Click">
                        <i class="fa-solid fa-trash"></i>
                        </asp:LinkButton>
                        <asp:LinkButton ID="btnUpdate2" runat="server" OnClick="btnUpdate2_Click">
                            <i class="fa-solid fa-pen-to-square"></i>
                        </asp:LinkButton>                  
                </div>
            </div>
            <div class="item">
                <section>
                    <img src="img/productos/hp-2pro.png" alt="" srcset=""  class="img-prod">
                </section>
                <div class="info">
                    <p class="nombre">Laptop HP 240 G9</p>
                        <p class="unidades">Unidades: 7</p>
                        <p class="precio">Precio: <span>$5,499.00 MX</span></p>
                        <p class="marca">Marca: HP</p>
                        <p class="modelo">Modelo: 240 G9 (6k015lt)</p>
                        <p class="modelo">Color: Gris</p>
                        <p class="descripcion">  Descripcion: 14''  Celeron  N4500  8gb  256gb  Ssd  W11</p>
                    <asp:LinkButton ID="btnDelete3" runat="server" OnClick="btnDelete3_Click">
                        <i class="fa-solid fa-trash"></i>
                        </asp:LinkButton>
                        <asp:LinkButton ID="btnUpdate3" runat="server" OnClick="btnUpdate3_Click">
                            <i class="fa-solid fa-pen-to-square"></i>
                        </asp:LinkButton>                  
                </div>
            </div>
            <div class="item">
                <section>
                    <img src="img/productos/dell-2pro.png" alt="" srcset=""  class="img-prod">
                </section>
                <div class="info">
                    <p class="nombre">Laptop Dell Inspiron 15 3525</p>
                        <p class="unidades">Unidades: 1</p>
                        <p class="precio">Precio: <span>$14,785.00 MX</span></p>
                        <p class="marca">Marca: Dell</p>
                        <p class="modelo">Modelo: Inspiron 15 3525</p>
                        <p class="modelo">Color: Negro</p>
                        <p class="descripcion">  Descripcion:  15.6 Pulgadas Full HD AMD Ryzen 7 AMD Radeon 16 GB RAM 1 TB SSD</p>
                    <asp:LinkButton ID="btnDelete4" runat="server" OnClick="btnDelete4_Click">
                        <i class="fa-solid fa-trash"></i>
                        </asp:LinkButton>
                        <asp:LinkButton ID="btnUpdate4" runat="server" OnClick="btnUpdate4_Click">
                            <i class="fa-solid fa-pen-to-square"></i>
                        </asp:LinkButton>                  
                </div>
            </div>

        </section>    
</div>
    
</asp:Content>