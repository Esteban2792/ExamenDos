using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen2EstebanMendez
{
    public partial class Pagos : System.Web.UI.Page
    {
        string pago = "";


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void electricidadimg_Click(object sender, ImageClickEventArgs e)
        {
            Cliente.SetNombre(Nombretxt.Text);
            Cliente.SetCedula(Cedulatxt.Text);
            Cliente.SetDireccion(Direcciontxt.Text);
            Cliente.SetTelefono(Telefonotxt.Text);
            Cliente.SetOpinion(Mensajetxt.Text);
            pago = "Monto de pago de electricidad";
            
            Response.Redirect("Facturar.aspx");
        }

        protected void aguaimg_Click(object sender, ImageClickEventArgs e)
        {
            Cliente.SetNombre(Nombretxt.Text);
            Cliente.SetCedula(Cedulatxt.Text);
            Cliente.SetDireccion(Direcciontxt.Text);
            Cliente.SetTelefono(Telefonotxt.Text);
            Cliente.SetOpinion(Mensajetxt.Text);

            Response.Redirect("Facturar.aspx");
        }

        protected void cableimg_Click(object sender, ImageClickEventArgs e)
        {
            Cliente.SetNombre(Nombretxt.Text);
            Cliente.SetCedula(Cedulatxt.Text);
            Cliente.SetDireccion(Direcciontxt.Text);
            Cliente.SetTelefono(Telefonotxt.Text);
            Cliente.SetOpinion(Mensajetxt.Text);
            
            Response.Redirect("Facturar.aspx");
        }

        protected void telefonoimg_Click(object sender, ImageClickEventArgs e)
        {
            Cliente.SetNombre(Nombretxt.Text);
            Cliente.SetCedula(Cedulatxt.Text);
            Cliente.SetDireccion(Direcciontxt.Text);
            Cliente.SetTelefono(Telefonotxt.Text);
            Cliente.SetOpinion(Mensajetxt.Text);

            Response.Redirect("Facturar.aspx");
        }
    }
}