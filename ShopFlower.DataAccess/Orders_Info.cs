using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Core;

namespace DataAccess
{
  public  class Orders_Info
    {
        public int id { get; set; }
        public string TenKhachHang { get; set; }
        public string DiaChi { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string GhiChu { get; set; }
        public double TongTien { get; set; }
        public bool status { get; set; }
       

      // thêm 1 đơn đặt hàng mới
     
     
        public static int Add(int id,string TenKhachHang, string DiaChi, string Email, string Phone, string GhiChu,double TongTien, bool status)
        {
            
                object rs = DataProvider.Instance.ExecuteNonQueryWithOutput("@id", "Orders_Insert", id,TenKhachHang, DiaChi, Email, Phone, GhiChu, TongTien, status);
               // DataProvider.Instance.ExecuteNonQuery("Orders_Insert", TenKhachHang, DiaChi, Email, Phone, GhiChu, TongTien, status);
                int identity = rs != null ? Convert.ToInt32(rs) : 0;
                return identity;
            
        }
        public static List<Orders_Info> GetAll()
        {
            return CBO.FillCollection<Orders_Info>(DataProvider.Instance.ExecuteReader("Orders_GetAll"));
        }
        public static Orders_Info getbyid(string id)
        {
            return CBO.FillObject<Orders_Info>(DataProvider.Instance.ExecuteReader("Orders_GetById", id));
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
                int rs = DataProvider.Instance.ExecuteNonQuery("Orders_Delete", id);
                return rs > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static bool Update_TrangThai(Orders_Info order)
        {
            try
            {
                object rs = DataProvider.Instance.ExecuteNonQuery("category_update_TrangThai", order.id, order.status);
                return Convert.ToInt32(rs) > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static List<Orders_Info> GetXuLy(bool trangthai)
        {
            return CBO.FillCollection<Orders_Info>(DataProvider.Instance.ExecuteReader("Orders_GetTrangThai",trangthai));
        }
    }
}
