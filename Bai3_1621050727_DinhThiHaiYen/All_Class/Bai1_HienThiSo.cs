using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bai3_1621050727_DinhThiHaiYen.All_Class
{
    public class Bai1_HienThiSo
    {
        public int getQuantity(int number)
        {
            int quantity = 0;

            for (int i = 0; i < 10; i++)
            {
                for (int j = 0; j < 10; j++)
                {
                    for (int k = 0; k < 10; k++)
                    {
                        for (int h = 0; h < 10; h++)
                        {
                            int total = i + j + k + h;

                            if (total % 10 == number)
                            {
                                quantity++;
                            }
                        }
                    }
                }
            }

            return quantity;
        }

        public List<string> getListNumber(int number)
        {
            List<string> list = new List<string>();

            for (int i = 0; i < 10; i++)
            {
                for (int j = 0; j < 10; j++)
                {
                    for (int k = 0; k < 10; k++)
                    {
                        for (int h = 0; h < 10; h++)
                        {
                            int total = i + j + k + h;

                            if (total % 10 == number)
                            {
                                string strI = i.ToString();
                                string strJ = j.ToString();
                                string strK = k.ToString();
                                string strH = h.ToString();

                                string result = strI + strJ + strK + strH;
                                list.Add(result);
                            }
                        }
                    }
                }
            }

            return list;
        }
    }
}