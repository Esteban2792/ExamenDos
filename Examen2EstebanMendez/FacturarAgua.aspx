<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacturarAgua.aspx.cs" Inherits="Examen2EstebanMendez.Facturar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <title>Facturación de Servicios</title>
    <style type="text/css">
        .auto-style1 {
            overflow: hidden;
            text-align: justify;
        }
    </style>
</head>
<body>
    <form id="form1" class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin" runat="server">
        <h2 class="w3-center" style="font-family: 'Berlin Sans FB'">
            <asp:SqlDataSource ID="SqlTransaccion" runat="server" ConnectionString="<%$ ConnectionStrings:EXAMEN2DBConnectionString %>" InsertCommand="INSERT INTO cliente (nombre, cedula, telefono, direccion, mensaje ) VALUES (@nombre, @cedula, @telefono, @direccion, @mensaje)" SelectCommand="SELECT * FROM [cliente]">
                <InsertParameters>
                    <asp:ControlParameter ControlID="Nombretxt" Name="nombre" PropertyName="Text" />
                    <asp:ControlParameter ControlID="Cedulatxt" Name="cedula" PropertyName="Text" />
                    <asp:ControlParameter ControlID="Telefonotxt" Name="telefono" PropertyName="Text" />
                    <asp:ControlParameter ControlID="Direcciontxt" Name="direccion" PropertyName="Text" />
                    <asp:ControlParameter ControlID="Mensajetxt" Name="mensaje" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="Sqltransaccion2" runat="server" ConnectionString="<%$ ConnectionStrings:EXAMEN2DBConnectionString %>" InsertCommand="INSERT INTO facturacion (montoPagar,descuento,subtotal,iva,total) values (@monto,@descuento, @subtotal, @iva, @total)" SelectCommand="SELECT * FROM [facturacion]">
                <InsertParameters>
                    <asp:ControlParameter ControlID="electricidadtxt0" Name="monto" PropertyName="Text" />
                    <asp:ControlParameter ControlID="descuentotxt0" Name="descuento" PropertyName="Text" />
                    <asp:ControlParameter ControlID="subtotaltxt" Name="subtotal" PropertyName="Text" />
                    <asp:ControlParameter ControlID="IVAtxt" Name="iva" PropertyName="Text" />
                    <asp:ControlParameter ControlID="Totaltxt" Name="total" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
            Pago de servicios</h2>
        <h3 class="w3-center" style="font-family: 'Berlin Sans FB'">Por favor digite su monto a pagar</h3>
        <div class="w3-row w3-section">
            <div class="w3-rest">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="numFactura" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="numFactura" HeaderText="numFactura" InsertVisible="False" ReadOnly="True" SortExpression="numFactura" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EXAMEN2DBConnectionString %>" SelectCommand="SELECT [numFactura] FROM [facturacion]"></asp:SqlDataSource>
            </div>
            </div>
            <div class="w3-row w3-section">

                <div class="w3-rest">
                    Fecha:&nbsp;
                    <asp:Label ID="meslbl" runat="server"></asp:Label>
                    <br />
                    <br />
                    Monto a pagar de agua:
                    <asp:TextBox ID="electricidadtxt" runat="server" TextMode="Number"></asp:TextBox>
                    <br />
                    <br />
                    Descuento:<asp:TextBox ID="descuentotxt" runat="server" TextMode="Number">0</asp:TextBox>
                    <br />
                </div>

                <div class="w3-row w3-section">
                    <div class="w3-col" style="width: 50px"><i class="w3-xxlarge fa fa-user"></i></div>
                    <div class="w3-rest">
                        <asp:Label ID="Nombretxt" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="w3-row w3-section">
                    <div class="w3-col" style="width: 50px"><i class="w3-xxlarge fa fa-user"></i></div>
                    <div class="w3-rest">
                        <asp:Label ID="Cedulatxt" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="w3-row w3-section">
                    <div class="w3-col" style="width: 50px"><i class="w3-xxlarge fa fa-envelope-o"></i></div>
                    <div class="w3-rest">
                        <asp:Label ID="Telefonotxt" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="w3-row w3-section">
                    <div class="w3-col" style="width: 50px"><i class="w3-xxlarge fa fa-phone"></i></div>
                    <div class="w3-rest">
                        <asp:Label ID="Direcciontxt" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="w3-row w3-section">
                    <div class="w3-col" style="width: 50px"><i class="w3-xxlarge fa fa-pencil"></i></div>
                    <div class="w3-rest">
                        <asp:Label ID="Mensajetxt" runat="server"></asp:Label>
                        <br />
                        <br />
                        <br />
                        <br />

                <div class="auto-style1" aria-atomic="False">
                    Monto:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="electricidadtxt0" runat="server" TextMode="Number" Enabled="False"></asp:TextBox>
                    <br />
                    <br />
                    Descuento: <asp:TextBox ID="descuentotxt0" runat="server" TextMode="Number" Enabled="False"></asp:TextBox>
                    <br />
                    <br />
                    SubTotal:&nbsp;&nbsp; <asp:TextBox ID="subtotaltxt" runat="server" TextMode="Number" Enabled="False"></asp:TextBox>
                    <br />
                    <br />
                    IVA:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="IVAtxt" runat="server" TextMode="Number" Enabled="False"></asp:TextBox>
                    <br />
                    <br />
                    Total:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Totaltxt" runat="server" TextMode="Number" Enabled="False"></asp:TextBox>
                    <br />
                    <br />
                </div>

                    </div>
                </div>
                <div class="w3-center">
                    <asp:Button ID="Agregarbtn" class="w3-button w3-blue w3-ripple w3-padding" runat="server" Text="AGREGAR" OnClick="Agregarbtn_Click" />
                                    <asp:Button ID="Salvarbtn" class="w3-button w3-blue w3-ripple w3-padding" runat="server" Text="SALVAR" OnClick="Salvarbtn_Click" />
                    <asp:Button ID="Volverbtn" class="w3-button w3-blue w3-ripple w3-padding" runat="server" Text="VOLVER" OnClick="Volverbtn_Click" />

                </div>
            </div>
    </form>
</body>
</html>