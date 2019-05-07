using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bai3_1621050727_DinhThiHaiYen.All_Class
{
    public class cls_chuyendoi
    {
        public string reverseString(string s)
        {
            char[] charArray = s.ToCharArray();
            Array.Reverse(charArray);
            return new string(charArray);
        }

        public string convertNumber(int number, int a)
        {
            string result = "";

            while (number != 0)
            {
                int i = number % a;

                if (i >= 0 && i < 10)
                {
                    result += i;
                }
                else
                {
                    switch (i)
                    {
                        case 10:
                            result += "a";
                            break;
                        case 11:
                            result += "b";
                            break;
                        case 12:
                            result += "c";
                            break;
                        case 13:
                            result += "d";
                            break;
                        case 14:
                            result += "e";
                            break;
                        default:
                            result += "f";
                            break;
                    }

                }
                number /= a;
            }

            result = reverseString(result);
            return result;
        }
    }
}