using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bai3_1621050727_DinhThiHaiYen
{
    public partial class Infor_Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Request.Form.Get("txbName");
            string phone = Request.Form.Get("txbPhone");
            string email = Request.Form.Get("txbEmail");
            string address = Request.Form.Get("txbAddress");
            string gender = Request.Form.Get("Gender");
            string day = Request.Form.Get("ddlDay");
            string month = Request.Form.Get("ddlMonth");
            string year = Request.Form.Get("ddlYear");

            if (gender == "rbMale")
            {
                lblGender.Text = "Nam";
            }
            else
            {
                lblGender.Text = "Nữ";
            }

            lblDateOfBirth.Text = day + "/" + month + "/" + year;
            lblname.Text = name;
            lblPhone.Text = phone;
            lblEmail.Text = email;
            lblAddress.Text = address;
        }
    }
}