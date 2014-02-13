using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Core;

namespace DataAccess
{
   public class lienhe_info
    {
        public int id { get; set; }
        public string hoten { get; set; }
        public string email { get; set; }
        public string phone { get; set; }
        public string noidung { get; set; }
        public bool TrangThai { get; set; }

        public static List<lienhe_info> getall()
        {
            return CBO.FillCollection<lienhe_info>(DataProvider.Instance.ExecuteReader("contact_getall"));
        }
        public static lienhe_info Get_byid(int id)
        {
            return CBO.FillObject<lienhe_info>(DataProvider.Instance.ExecuteReader("contact_get", id));
        }
        public static bool add(string name, string email, string phone, string noidung, bool TrangThai)
        {
            try
            {
                object rs = DataProvider.Instance.ExecuteNonQuery("contact_add", name, email, phone, noidung,TrangThai);
                return Convert.ToInt32(rs) > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static bool Update(int id, bool trangthai)
        {
            try
            {
                object rs = DataProvider.Instance.ExecuteNonQuery("contact_update", id,trangthai);
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
                object rs = DataProvider.Instance.ExecuteNonQuery("contact_delete", id);
                return Convert.ToInt32(rs) > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static List<lienhe_info> GetXuLy(bool TrangThai)
        {
            return CBO.FillCollection<lienhe_info>(DataProvider.Instance.ExecuteReader("contact_GetXuLy", TrangThai));
        }
    }
}
