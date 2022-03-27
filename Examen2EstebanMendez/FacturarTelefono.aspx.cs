using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen2EstebanMendez
{
    public partial class Facturar : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           
            string fecha = DateTime.Today.ToString();
            meslbl.Text = fecha;
            float monto = facturas.GetMonto();
            float descuento = facturas.GetDescuento();
            float subtotal = monto - descuento;
            float iva = subtotal * 0.13f;
            float total = subtotal + iva;

            electricidadtxt0.Text = monto.ToString();
            descuentotxt0.Text = descuento.ToString();

            

            subtotaltxt.Text = subtotal.ToString();
            IVAtxt.Text = iva.ToString();
            Totaltxt.Text = total.ToString();




   Nombretxt.Text = Cliente.GetNombre();
            Cedulatxt.Text = Cliente.GetCedula();
            Direcciontxt.Text = Cliente.GetDireccion();
            Telefonotxt.Text = Cliente.GetTelefono();
            Mensajetxt.Text = Cliente.GetOpinion();


        }

        protected void Agregarbtn_Click(object sender, EventArgs e)
        {

            facturas.SetMonto(float.Parse(electricidadtxt.Text));
            facturas.SetDescuento(float.Parse(descuentotxt.Text));
            SqlTransaccion.Insert();
            Response.Redirect("Facturar.aspx");  
        }

        protected void Volverbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pagos.aspx");
        }

        protected void Salvarbtn_Click(object sender, EventArgs e)
        {
            Sqltransaccion2.Insert();
        }
    }
}