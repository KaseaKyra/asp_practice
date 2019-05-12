using Bai7_1621050727_DinhThiHaiYen.AllClass;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bai7_1621050727_DinhThiHaiYen
{
    public partial class HoSoGiangVien : System.Web.UI.Page
    {
        ClsConnect clsCon = new ClsConnect();
        SqlCommand sqlCommand;

        private int executeScalar(string sql)
        {
            sqlCommand = new SqlCommand(sql, clsCon.con);
            int result = (int)sqlCommand.ExecuteScalar();
            return result;
        }

        private SqlDataReader executeQuery(string sql)
        {
            sqlCommand = new SqlCommand(sql, clsCon.con);
            return sqlCommand.ExecuteReader();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                clsCon.openDB();
                string strSql;

                // HỒ SƠ GIẢNG VIÊN TRONG CƠ SỞ DỮ LIỆU
                strSql = "select Magv, Tengv, Namsinh, (CASE Gioitinh WHEN '1' THEN N'Nữ' WHEN '0' THEN N'Nam' END), Hocvi, Email, Dienthoai, Diachi from tbl_giangvien";
                SqlDataReader re = executeQuery(strSql);
                string st_kq = "";
                int dem = 0;
                while (re.Read())
                {
                    dem += 1;
                    st_kq += "<tr><td>"
                        + dem
                        + "</td><td>"
                        + re.GetValue(0).ToString()
                        + "</td><td>"
                        + re.GetValue(1).ToString()
                        + "</td><td>"
                        + re.GetValue(2).ToString()
                        + "</td><td>"
                        + re.GetValue(3).ToString()
                        + "</td><td>"
                        + re.GetValue(4).ToString()
                        + "</td><td>"
                        + re.GetValue(5).ToString()
                        + "</td><td>"
                        + re.GetValue(6).ToString()
                        + "</td><td>"
                        + re.GetValue(7).ToString()
                        + "</td></tr>";
                }
                re.Close();
                ltrHoSoGv.Text = st_kq;


            }
            catch (Exception ex)
            {
                Response.Write("Lối: " + ex);
            }
            finally
            {
                clsCon.closeDB();
            }
        }
    }
}