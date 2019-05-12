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
    public partial class HoSoDoAn : System.Web.UI.Page
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

                // HỒ SƠ ĐỒ ÁN TRONG CƠ SỞ DỮ LIỆU
                strSql = "SELECT SV.MaSV AS N'Mã sinh viên', " +
                        "SV.TenSV AS N'Tên sinh viên', " +
                        "DA.TenDA AS N'Tên đồ án', " +
                        "(DA.GVHD + '-' + GV.TenGV)AS N'GVHD', " +
                        "(DA.GVPB + '-' + (SELECT GV1.TenGV FROM dbo.tbl_GiangVien GV1 WHERE GV1.MaGV = DA.GVPB )) AS N'GVPB', " +
                        "LV.TenLV AS  N'Lĩnh vực', " +
                        "DA.Diem AS N'Điểm', " +
                        "DA.Namtn AS N'Năm TN' " +
                        "FROM dbo.tbl_SinhVien SV JOIN dbo.tbl_DoAn DA ON DA.MaSV = SV.MaSV " +
                        "JOIN dbo.tbl_GiangVien GV ON GV.MaGV = DA.GVHD " +
                        "JOIN dbo.tbl_LinhVuc LV ON LV.MaLV = DA.LinhVuc";

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
                ltrHoSoDoAn.Text = st_kq;

                //DROPDOWNLIST CHUYEN NGANH
                string queryLv = "select * from tbl_linhvuc";
                SqlDataReader readerLv = executeQuery(queryLv);
                while (readerLv.Read())
                {
                    ListItem newItem = new ListItem();
                    newItem.Text = readerLv["Tenlv"].ToString();
                    newItem.Value = readerLv["Malv"].ToString();
                    ddlLinhVuc.Items.Add(newItem);
                }
                readerLv.Close();

                //DROPDOWNLIST GIANG VIEN
                string queryGv = "select * from tbl_giangvien";
                SqlDataReader readerGv = executeQuery(queryGv);
                while (readerGv.Read())
                {
                    ListItem newItem = new ListItem();
                    newItem.Text = readerGv["Magv"].ToString() + " - " + readerGv["Tengv"].ToString();
                    newItem.Value = readerGv["Magv"].ToString();
                    ddlGiangVien.Items.Add(newItem);
                }
                readerGv.Close();

                //DROPDOWNLIST DIEM
                //string queryDiem = "select * from tbl_doan";
                //SqlDataReader readerDiem = executeQuery(queryDiem);
                //while (readerDiem.Read())
                //{
                //    ListItem newItem = new ListItem();
                //    newItem.Text = /*readerDiem["Magv"].ToString() + " - " + */readerDiem["Tengv"].ToString();
                //    newItem.Value = readerDiem["Magv"].ToString();
                //    ddlDiem.Items.Add(newItem);
                //}
                //readerDiem.Close();
                ddlDiem.Items.Add(new ListItem("Điểm <= 7"));
                ddlDiem.Items.Add(new ListItem("Điểm > 7 và < 8"));
                ddlDiem.Items.Add(new ListItem("Điểm >= 8 và < 9"));
                ddlDiem.Items.Add(new ListItem("Điểm >= 9 và <= 10"));
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