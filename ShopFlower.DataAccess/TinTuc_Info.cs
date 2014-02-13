using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Core;

namespace DataAccess
{
 public   class TinTuc_Info
    {
        public int id { get; set; }
        public string HinhDaiDien { get; set; }
        public string TieuDe { get; set; }
        public string TomTat { get; set; }
        public string NoiDung { get; set; }
        public DateTime NgayDang { get; set; }
        public string TrangThai { get; set; }
     //lấy tất cả
        public static List<TinTuc_Info> getall()
        {
            return CBO.FillCollection<TinTuc_Info>(DataProvider.Instance.ExecuteReader("TinTuc_GetAll"));
        }
        public static bool Update(int id, string HinhDaiDien, string TieuDe, string TomTat, string NoiDung,bool TrangThai)
        {
            try
            {
                object rs = DataProvider.Instance.ExecuteNonQuery("TinTuc_Update", id, HinhDaiDien,TieuDe, TomTat, NoiDung,TrangThai);
                return Convert.ToInt32(rs) > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public static bool Add(string HinhDaiDien, string TieuDe, string TomTat, string NoiDung, DateTime NgayDang, bool TrangThai)
        {
            try
            {
                object rs = DataProvider.Instance.ExecuteNonQuery("TinTuc_Insert", HinhDaiDien, TieuDe,TomTat, NoiDung,NgayDang,TrangThai);
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
                int rs = DataProvider.Instance.ExecuteNonQuery("TinTuc_Delete", id);
                return rs > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static TinTuc_Info getby_id(int id)
        {
            return CBO.FillObject<TinTuc_Info>(DataProvider.Instance.ExecuteReader("TinTuc_GetById", id));
        }

     
        public static List<TinTuc_Info> GetTop5()
        {
            return CBO.FillCollection<TinTuc_Info>(DataProvider.Instance.ExecuteReader("TinTuc_GetAll"));
        }

        
    }
}
