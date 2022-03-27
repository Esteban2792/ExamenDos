namespace Examen2EstebanMendez
{
    public class Cliente
    {
        //Atributos
        private static string Nombre { get; set; }

        private static string cedula { get; set; }
        private static string direccion { get; set; }
        private static string telefono { get; set; }
        public static string opinion { get; set; }

        //Getters y Setters
        public static void SetNombre(string name)
        {
            Nombre = name;
        }

        public static string GetNombre()
        {
            return Nombre;
        }

        public static void SetCedula(string id)
        {
            cedula = id;
        }

        public static string GetCedula()
        {
            return cedula;
        }

        public static void SetDireccion(string address)
        {
            direccion = address;
        }

        public static string GetDireccion()
        {
            return direccion;
        }

        public static void SetTelefono(string phone)
        {
            telefono = phone;
        }

        public static string GetTelefono()
        {
            return telefono;
        }

        public static void SetOpinion(string msj)
        {
            opinion = msj;
        }

        public static string GetOpinion()
        {
            return opinion;
        }
    }
}