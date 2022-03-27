using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Examen2EstebanMendez
{
    public class facturas
    {
        public static float monto { get; set; }
        public static float descuento { get; set; }
        public static float subtotal { get; set; }
        public static float iva { get; set; }
        public static float total { get; set; }

        //Getters y Setters
        public static void SetMonto(float cuanto)
        {
            monto = cuanto;
        }

        public static float GetMonto()
        {
            return monto;
        }

        public static void SetDescuento(float menos)
        {
            descuento = menos;
        }

        public static float GetDescuento()
        {
            return descuento;
        }

        public static void SetSubtotal(float previo)
        {
            subtotal = previo;
        }

        public static float GetSubtotal()
        {
            return subtotal;
        }

        public static void SetIva(float impuesto)
        {
            iva = impuesto;
        }

        public static float GetIva()
        {
            return iva;
        }

        public static void SetTotal(float todo)
        {
            total = todo;
        }

        public static float GetTotal()
        {
            return total;
        }
    }
}