using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.Data.Sql;
using System.Data.SqlClient;

namespace SDU
{
    class conexion
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataReader dr;

        public conexion()
        {
            try
            {
                cn = new SqlConnection("Data Source=DESKTOP-KTD8KFE\\SQLEXPRESS;Initial Catalog=s_d_u;Integrated Security=True");
                cn.Open();
                MessageBox.Show("Conectado");
            }
            catch (Exception ex)
            {
                MessageBox.Show("No se conecto con la base de datos " + ex.ToString());
            }
        }
    }
    }


///++++++
///