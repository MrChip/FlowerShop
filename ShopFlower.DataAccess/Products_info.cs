using System;
using System.Collections.Generic;
using Core;

namespace DataAccess
{
    public class Products_info
    {
        // Các thuộc tính của lớp 
        public int id { get; set; }
        public int id_item { get; set; }
        public string pname { get; set; }
        public string pmota { get; set; }
        public string pchitiet { get; set; }
        public double ppricecurrent { get; set; }
        public double ppriceold { get; set; }
        public string pimage { get; set; }
        public int pnew { get; set; }
        public int pkhuyenmai { get; set; }
        public int phot { get; set; }
        public string pngaydang { get; set; }
        public bool active { get; set; }

        public static List<Products_info> getall()
        {
            return CBO.FillCollection<Products_info>(DataProvider.Instance.ExecuteReader("products_GetAll"));
        }

        //lấy tất cả các sản phẩm có id danh mục
        public static List<Products_info> Getpro_by(string iditem)
        {
            return CBO.FillCollection<Products_info>(DataProvider.Instance.ExecuteReader("Products_Getpro_by", iditem));
        }
        //lấy tất cả các sản phẩm có trong danh mục gôc
        public static List<Products_info> Getpro_by_DanhMucGoc(string iditem)
        {
            return CBO.FillCollection<Products_info>(DataProvider.Instance.ExecuteReader("Products_Get_By_DanhMucCha", iditem));
        }
        public static List<Products_info> SanPhamCungLoai(int soluong, int iddanhmuc, int id)
        {
            return CBO.FillCollection<Products_info>(DataProvider.Instance.ExecuteReader("products_sanphamcungloai", soluong, iddanhmuc, id));
        }


        public static Products_info getby_id(string id)
        {
            return CBO.FillObject<Products_info>(DataProvider.Instance.ExecuteReader("Products_getdetail", id));
        }


        public static List<Products_info> Getnameitem(string iditem)
        {
            return CBO.FillCollection<Products_info>(DataProvider.Instance.ExecuteReader("Products_Getnameitem", iditem));
        }

        public static bool Add(int id_item, string pname, string pmota, string pchitiet, string ppricecurrent,
                               string ppriceold, string pimage, int pnew, int pkhuyenmai, int phot, string pngaydang,
                               int pactive)
        {
            try
            {
                object rs = DataProvider.Instance.ExecuteNonQuery("Products_add", id_item, pname, pmota, pchitiet, ppricecurrent, ppriceold, pimage, pnew, pkhuyenmai, phot, pngaydang, pactive);
                return Convert.ToInt32(rs) > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static bool Update(int id, int id_item, string pname, string pmota, string pchitiet,
                                  string ppricecurrent, string ppriceold, string pimage, int pnew, int pkhuyenmai,
                                  int phot, string pngaydang, int pactive)
        {
            try
            {
                object rs = DataProvider.Instance.ExecuteNonQuery("Products_update", id, id_item, pname, pmota, pchitiet,
                                                                  ppricecurrent, ppriceold, pimage, pnew, pkhuyenmai,
                                                                  phot, pngaydang, pactive);
                return Convert.ToInt32(rs) > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static bool Delete(string id)
        {
            try
            {
                int rs = DataProvider.Instance.ExecuteNonQuery("Products_Del_pro", id);
                return rs > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static bool Active_pro(bool status, int id)
        {
            try
            {
                int rs = DataProvider.Instance.ExecuteNonQuery("products_Active", status, id);
                return rs > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static List<Products_info> Getby_option(string option)
        {
            return CBO.FillCollection<Products_info>(DataProvider.Instance.ExecuteReader("Products_Getby_option", option));
        }

        public static List<Products_info> TimKiem(string key)
        {
            string key2 = "%" + key + "%";
            return CBO.FillCollection<Products_info>(DataProvider.Instance.ExecuteReader("products_TimKiem", key2));

        }

        public static List<Products_info> GetHot()
        {
            return CBO.FillCollection<Products_info>(DataProvider.Instance.ExecuteReader("Products_GetHot"));
        }

        public static List<Products_info> GetNew()
        {
            return CBO.FillCollection<Products_info>(DataProvider.Instance.ExecuteReader("Products_GetNew"));
        }

        public static List<Products_info> GetSaLe(bool khuyenmai)
        {
            return CBO.FillCollection<Products_info>(DataProvider.Instance.ExecuteReader("Products_GetSaLe", khuyenmai));
        }
    }
}