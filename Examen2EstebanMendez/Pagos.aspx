<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagos.aspx.cs" Inherits="Examen2EstebanMendez.Pagos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <title>Pago de Servicios</title>
</head>
<body>
    <form id="form1" class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin" runat="server">
        <h2 class="w3-center" style="font-family: 'Berlin Sans FB'">Pago de servicios</h2>
        <h3 class="w3-center" style="font-family: 'Berlin Sans FB'; text-decoration: blink">Por favor digite su información</h3>

        <div class="w3-row w3-section">
            <div class="w3-col" style="width: 50px"><i class="w3-xxlarge fa fa-user"></i></div>
            <div class="w3-rest">
                <asp:TextBox ID="Nombretxt" class="w3-input w3-border" placeholder="Digite su nombre" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="w3-row w3-section">
            <div class="w3-col" style="width: 50px"><i class="w3-xxlarge fa fa-user"></i></div>
            <div class="w3-rest">
                <asp:TextBox ID="Cedulatxt" class="w3-input w3-border" placeholder="Digite su cédula" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="w3-row w3-section">
            <div class="w3-col" style="width: 50px"><i class="w3-xxlarge fa fa-envelope-o"></i></div>
            <div class="w3-rest">
                <asp:TextBox ID="Direcciontxt" class="w3-input w3-border" placeholder="Digite su dirección" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="w3-row w3-section">
            <div class="w3-col" style="width: 50px"><i class="w3-xxlarge fa fa-phone"></i></div>
            <div class="w3-rest">
                <asp:TextBox ID="Telefonotxt" class="w3-input w3-border" placeholder="Digite su numero telefónico" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="w3-row w3-section">
            <div class="w3-col" style="width: 50px"><i class="w3-xxlarge fa fa-pencil"></i></div>
            <div class="w3-rest">
                <asp:TextBox ID="Mensajetxt" class="w3-input w3-border" placeholder="Digite alguna recomendación" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="w3-center">
        <asp:ImageButton ID="electricidadimg" class="w3-button w3-blue w3-ripple w3-padding" runat="server" ImageUrl="~/Imagenes/idea.gif" Height="75px" Width="94px" DescriptionUrl="~/Facturar.aspx" OnClick="electricidadimg_Click" />
        <asp:ImageButton ID="aguaimg" class="w3-button w3-blue w3-ripple w3-padding" runat="server" ImageUrl="~/Imagenes/grifo.gif" Height="75px" Width="94px" OnClick="aguaimg_Click" />
        <asp:ImageButton ID="cableimg" class="w3-button w3-blue w3-ripple w3-padding" runat="server" ImageUrl="~/Imagenes/television.gif" Height="75px" Width="94px" OnClick="cableimg_Click" />
        <asp:ImageButton ID="telefonoimg" class="w3-button w3-blue w3-ripple w3-padding" runat="server" ImageUrl="~/Imagenes/telefono.gif" Height="75px" Width="94px" OnClick="telefonoimg_Click" />
    </div>
            </form>
</body>
</html>