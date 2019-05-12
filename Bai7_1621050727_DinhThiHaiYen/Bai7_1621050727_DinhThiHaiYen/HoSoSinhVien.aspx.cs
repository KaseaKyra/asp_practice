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
    public partial class HoSoSSinhVien : System.Web.UI.Page
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

                // HỒ SƠ SINH VIÊN TRONG CƠ SỞ DỮ LIỆU
                strSql = "SELECT SV.MaSV, SV.TenSV, sv.Namsinh, " +
                    "(CASE sv.GioiTinh WHEN '1' THEN N'Nữ' WHEN '0' THEN N'Nam' END) AS N'Giới Tính', " +
                    "sv.Khoa, cn.Tencn, sv.Email, sv.Dienthoai, sv.Diachi " +
                    "FROM dbo.tbl_SinhVien SV JOIN dbo.tbl_chuyennganh cn ON cn.Macn = SV.Chuyennganh";
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
                ltrHoSoSv.Text = st_kq;

                //DROPDOWNLIST KHOA
                string queryKhoa = "select * from tbl_khoahoc";
                SqlDataReader reader = executeQuery(queryKhoa);
                while (reader.Read())
                {
                    ListItem newItem = new ListItem();
                    newItem.Text = reader["Tenkh"].ToString();
                    newItem.Value = reader["Makh"].ToString();
                    ddlKhoa.Items.Add(newItem);
                }
                reader.Close();

                //DROPDOWNLIST CHUYEN NGANH
                string queryCn = "select * from tbl_chuyennganh";
                SqlDataReader read = executeQuery(queryCn);
                while (read.Read())
                {
                    ListItem newItem = new ListItem();
                    newItem.Text = read["Macn"].ToString() + " - " + read["Tencn"].ToString();
                    newItem.Value = read["Macn"].ToString();
                    ddlChuyenNganh.Items.Add(newItem);
                }
                read.Close();
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