using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bai7_1621050727_DinhThiHaiYen
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txbUsername.Text.Trim();
            string password = txbPassword.Text.Trim();

            if (username == "admin" && password == "admin")
            {
                // dang nhap thanh cong
                Response.Redirect("~/Home.aspx?username=" + username + "&password=" + password);

            }
            else
            {
                // khong dung
                //lblInform.Text = "TÊN ĐĂNG NHẬP HOẶC MẬT KHẨU KHÔNG ĐÚNG";
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txbPassword.Text = "";
            txbUsername.Text = "";
            txbUsername.Focus();
        }
    }
}