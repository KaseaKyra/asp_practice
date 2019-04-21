using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bai3_1621050727_DinhThiHaiYen
{
    public partial class frmRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int year = DateTime.Now.Year;
            for (int i = 1970; i < year; i++)
            {
                ddlYear.Items.Add(new ListItem(i.ToString()));
            }

            for (int i = 1; i < 32; i++)
            {
                ddlDay.Items.Add(new ListItem(i.ToString()));
            }

            for (int i = 1; i < 13; i++)
            {
                ddlMonth.Items.Add(new ListItem(i.ToString()));
            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txbAddress.Text = "";
            txbName.Text = "";
            txbPhone.Text = "";
            txbName.Focus();
        }
    }
}