using Bai3_1621050727_DinhThiHaiYen.All_Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bai3_1621050727_DinhThiHaiYen
{
    public partial class frmBai1_ChuyenDoi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConvert_Click(object sender, EventArgs e)
        {
            int number = int.Parse(txbInput.Text);
            int choice = 2;

            if (rbBinary.Checked)
            {
                choice = 2;
            }
            else if (rbOctal.Checked)
            {
                choice = 8;
            }
            else if (rbHexsan.Checked)
            {
                choice = 16;
            }

            cls_chuyendoi cd = new cls_chuyendoi();
            string result = cd.convertNumber(number, choice);

            if (choice == 2)
            {
                txbResult.Text = result + " (" + result.Length + ")";
            }
            else
            {
                txbResult.Text = result;
            }
        }
    }
}