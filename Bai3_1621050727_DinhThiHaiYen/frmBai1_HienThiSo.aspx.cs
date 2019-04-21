using Bai3_1621050727_DinhThiHaiYen.All_Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bai3_1621050727_DinhThiHaiYen
{
    public partial class frmBai1_HienThiChuSo : System.Web.UI.Page
    {
        Bai1_HienThiSo b1 = new Bai1_HienThiSo();
        List<string> list = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalc_Click(object sender, EventArgs e)
        {
            int number = int.Parse(txbInput.Text);
            int quantity = b1.getQuantity(number);

            lblQuantity.Text = quantity.ToString();
            list = b1.getListNumber(number);

            for (int i = 0; i < quantity; i++)
            {
                lbResult.Items.Add(list[i]);
            }

        }
    }
}