using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Core;

namespace DataAccess
{
   public class category_info
    {
        public int id { get; set; }
        public string parentid { get; set; }
        public string names { get; set; }
        public int no { get; set; }
        public bool active { get; set; }

        public static List<category_info> getchild(string idca, string status)
        {
            return CBO.FillCollection<category_info>(DataProvider.Instance.ExecuteReader("getchild", idca, status));
        }
        public static List<category_info> category_GetDanhMucCon(bool  active)
        {
            return CBO.FillCollection<category_info>(DataProvider.Instance.ExecuteReader("category_GetDanhMucCon", active));
        }
       public static category_info getbyid(string id)
        {
            return CBO.FillObject<category_info>(DataProvider.Instance.ExecuteReader("category_get", id));
        }
       public static List<category_info> getall()
       {
           return CBO.FillCollection<category_info>(DataProvider.Instance.ExecuteReader("category_getall"));
       }
        public static List<category_info> getparent(string status)
        {
            return CBO.FillCollection<category_info>(DataProvider.Instance.ExecuteReader("getparent", status));
        }
        public static bool Add(int parentid, string names, int no, int active)
        {
            try
            {
                object rs = DataProvider.Instance.ExecuteNonQuery("category_add",parentid,names,no,active);
                return Convert.ToInt32(rs) > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }
  
        public static bool Update(int id, int parentid, string names, int no, int active)

        {
            try
            {
                object rs = DataProvider.Instance.ExecuteNonQuery("category_update", id, parentid, names, no, active);
                return Convert.ToInt32(rs) > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static bool Delete(int id)
        {
            try
            {
                int rs = DataProvider.Instance.ExecuteNonQuery("category_delete", id);
                return rs > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }
        

       
    }
}
