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
    public partial class Home : System.Web.UI.Page
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

                // số hồ sơ dinh viên
                strSql = "select count(Masv) from tbl_sinhvien";
                lblHoSoSv.Text = executeScalar(strSql).ToString();

                // số hồ sơ dinh viên
                strSql = "select count(Magv) from tbl_giangvien";
                lblHoSoGv.Text = executeScalar(strSql).ToString();

                // số hồ sơ dinh viên
                strSql = "select count(Masv) from tbl_doan";
                lblDoAnTn.Text = executeScalar(strSql).ToString();

                // số hồ sơ dinh viên
                strSql = "select count(Macn) from tbl_chuyennganh";
                lblSoCn.Text = executeScalar(strSql).ToString();

                // THỐNG KÊ SINH VIÊN THEO CHUYÊN NGÀNH
                strSql = "select cn.Macn as N'Mã chuyên ngành', cn.Tencn as N'Chuyên ngành', COUNT(sv.Masv) as N'Số sinh viên' " +
                    "from tbl_chuyennganh as cn inner join tbl_sinhvien as sv " +
                    "on cn.Macn = sv.Chuyennganh " +
                    "group by cn.Macn, cn.Tencn";
                int dem = 0;
                SqlDataReader re = executeQuery(strSql);
                string st_kq = "";
                dem = 0;
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
                        + "</td><td><a href=\"SvTheoCn.aspx?Macn="
                        + re.GetValue(0).ToString()
                        + " \">Danh sách</a></td></tr>";
                }
                re.Close();
                ltrSvcn.Text = st_kq;

                //THỐNG KÊ ĐỒ ÁN THEO ĐIỂM
                strSql = "select count(sv.Masv) from tbl_sinhvien as sv inner join tbl_doan as da on sv.Masv = da.Masv where da.Diem <= 7";
                lblDiem1.Text = executeScalar(strSql).ToString();

                strSql = "select count(sv.Masv) from tbl_sinhvien as sv inner join tbl_doan as da on sv.Masv = da.Masv where da.Diem between 7.1 and 8";
                lblDiem2.Text = executeScalar(strSql).ToString();

                strSql = "select count(sv.Masv) from tbl_sinhvien as sv inner join tbl_doan as da on sv.Masv = da.Masv where da.Diem between 8.1 and 9";
                lblDiem3.Text = executeScalar(strSql).ToString();

                strSql = "select count(sv.Masv) from tbl_sinhvien as sv inner join tbl_doan as da on sv.Masv = da.Masv where da.Diem between 9.1 and 10";
                lblDiem4.Text = executeScalar(strSql).ToString();

                // bảng đồ án theo lĩnh vực
                string sql = "select lv.Malv, lv.Tenlv, COUNT(da.Masv) from tbl_doan as da inner join tbl_linhvuc as lv on da.linhvuc = lv.Malv group by lv.Malv, lv.Tenlv";
                SqlDataReader reader = executeQuery(sql);
                string strKetQua = "";
                dem = 0;
                while (reader.Read())
                {
                    dem += 1;
                    strKetQua += "<tr><td>"
                        + dem
                        + "</td><td>"
                        + reader.GetValue(0).ToString()
                        + "</td><td>"
                        + reader.GetValue(1).ToString()
                        + "</td><td>"
                        + reader.GetValue(2).ToString()
                        + "</td><td><a href=\"DaTheoLv.aspx?Malv="
                        + reader.GetValue(0).ToString()
                        + " \">Danh sách</a></td></tr>";
                }
                reader.Close();
                ltrDaTheoLv.Text = strKetQua;

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