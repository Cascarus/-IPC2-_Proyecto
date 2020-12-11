using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Mi_Libreria
{
    public class Utilidades
    {
        static DataSet DS = new DataSet();

        public static DataSet ejecutar(string command)
        {
            try
            {
                DS.Clear();
                SqlConnection myConnection = new SqlConnection("Data Source= DELL-CASCARUS; Initial Catalog=Proyecto_IPC2; Integrated Security=True");
                myConnection.Open();

                //DataSet DS = new DataSet();
                SqlDataAdapter DP = new SqlDataAdapter(command, myConnection);
                DP.Fill(DS);

                myConnection.Close();

            }
            catch (Exception er)
            {
                Console.WriteLine(er.ToString());
            }

            return DS;
            
        }

        public static void insertar(string command)
        {
            SqlConnection myConnection = new SqlConnection("Data Source= DELL-CASCARUS; Initial Catalog=Proyecto_IPC2; Integrated Security=True");
            myConnection.Open();

            SqlCommand com = new SqlCommand(command, myConnection);
            com.ExecuteNonQuery();

            myConnection.Close();

        }
    }
}
