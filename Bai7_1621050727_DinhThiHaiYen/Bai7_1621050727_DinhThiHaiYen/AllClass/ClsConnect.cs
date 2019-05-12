using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace Bai7_1621050727_DinhThiHaiYen.AllClass
{
    public class ClsConnect
    {
        public string strCon = WebConfigurationManager.ConnectionStrings["connect_DATN"].ToString();
        public SqlConnection con;

        public void openDB()
        {
            if (con == null)
            {
                con = new SqlConnection(strCon);
            }
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }
        }

        public void closeDB()
        {
            if (con != null)
            {
                con.Close();
                con.Dispose();
            }
        }

        public int executeScalar(string sql, SqlCommand sqlCommand)
        {
            sqlCommand = new SqlCommand(sql, con);
            int result = (int)sqlCommand.ExecuteScalar();
            return result;
        }

        public SqlDataReader executeQuery(string sql, SqlCommand sqlCommand)
        {
            sqlCommand = new SqlCommand(sql, con);
            return sqlCommand.ExecuteReader();
        }
    }
}