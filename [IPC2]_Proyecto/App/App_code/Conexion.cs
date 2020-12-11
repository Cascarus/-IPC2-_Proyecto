using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace _IPC2__Proyecto.App.App_Code
{
    public class Conexion
    {
        private static SqlConnection conexion = new SqlConnection
            (
            "Data Source= DELL-CASCARUS; Initial Catalog=Proyecto_IPC2; Integrated Security=True"
            );

        public static SqlConnection enviarCon()
        {
            return conexion;
        }
    }
}