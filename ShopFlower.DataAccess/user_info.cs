using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataAccess
{
    class user_info
    {
        public int id { get; set; }
        public string username { get; set; }
        public string email { get; set; }
        public string password { get; set; }
        public string fullname { get; set; }
        public string address { get; set; }
        public string birdthday { get; set; }
        public string phone { get; set; }
        public string rolecode { get; set; }
        public string status { get; set; }
       

        public static List<Products_info> getall()
        {
            return CBO.FillCollection<Products_info>(DataProvider.Instance.ExecuteReader("p_getpro"));
        }
    }
}
