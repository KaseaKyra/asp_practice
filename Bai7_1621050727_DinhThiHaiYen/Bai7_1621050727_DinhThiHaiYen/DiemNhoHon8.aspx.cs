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
    public partial class DiemNhoHon8 : System.Web.UI.Page
    {
        ClsConnect clsCon = new ClsConnect();
        SqlCommand sqlCommand;

        private SqlDataReader executeQuery(string sql)
        {
            sqlCommand = new SqlCommand(sql, clsCon.con);
            return sqlCommand.ExecuteReader();
        }

        private int executeScalar(string sql)
        {
            sqlCommand = new SqlCommand(sql, clsCon.con);
            int result = (int)sqlCommand.ExecuteScalar();
            return result;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                clsCon.openDB();
                string strSql;

                string soDa = "select count(Masv) from tbl_doan where Diem between 7.0 and 8.0";
                lblSumRecord.Text = executeScalar(soDa).ToString();

                // bảng điểm
                strSql = "select sv.Masv as N'Mã sinh viên', " +
                    "sv.Tensv as N'Tên sinh viên', " +
                    "da.Tenda as N'Tên đồ án', " +
                    "CONCAT(da.GVHD, ' - ', gv.Tengv) as N'Mã GVHD-Giảng viên hướng dẫn', " +
                    "da.Diem as N'Điểm' " +
                    "from tbl_sinhvien as sv inner join tbl_doan as da on sv.Masv = da.Masv " +
                    "inner join tbl_giangvien as gv on da.GVHD = gv.Magv " +
                    "where da.Diem between 7.1 and 8";
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
                        + "</td></tr>";
                }
                re.Close();
                ltrDiem1.Text = st_kq;
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