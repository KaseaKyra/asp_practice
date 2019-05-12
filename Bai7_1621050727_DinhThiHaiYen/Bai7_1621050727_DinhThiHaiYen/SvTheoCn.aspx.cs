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
    public partial class SvTheoCn : System.Web.UI.Page
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

                string Macn = Request.QueryString.Get("Macn");
                //lblSumRecord.Text = Macn;

                string soBanGhi = "select count(Masv) from tbl_sinhvien where Chuyennganh = " + Macn;
                lblSumRecord.Text = executeScalar(soBanGhi).ToString();

                // BẢNG ĐỀ TÀI THEO LĨNH VỰC
                strSql = "SELECT SV.MaSV, SV.TenSV, sv.Namsinh, " +
                    "(CASE sv.GioiTinh WHEN '1' THEN N'Nữ' WHEN '0' THEN N'Nam' END) AS N'Giới Tính', " +
                    "sv.Khoa, cn.Tencn, sv.Email, sv.Dienthoai, sv.Diachi " +
                    "FROM dbo.tbl_SinhVien SV JOIN dbo.tbl_chuyennganh cn ON cn.Macn = SV.Chuyennganh " +
                    "WHERE cn.Macn = " 
                    + Macn;
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
                        + "</td><td>"
                        + re.GetValue(8).ToString()
                        + "</td></tr>";
                }
                re.Close();
                ltrSvTheoCn.Text = st_kq;
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