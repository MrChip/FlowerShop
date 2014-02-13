using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Core;

namespace DataAccess
{
  public  class OrderDetails_Info
    {
        public int orderid { get; set; }
        public int ProductsId { get; set; }
        public int SoLuong { get; set; }
      //thêm
        public static bool Add(int orderid, int ProductsId, int SoLuong)
        {
            try
            {
                object rs = DataProvider.Instance.ExecuteNonQuery("Orderdetails_Insert", orderid,ProductsId,SoLuong);
                return Convert.ToInt32(rs) > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static List<OrderDetails_Info> Get_ByMaHDNhap(int MaHD)
        {
            try
            {
                return
                    CBO.FillCollection<OrderDetails_Info>(DataProvider.Instance.ExecuteReader("Orderdetails_GetById",
                                                                                         MaHD));
            }
            catch
            {
                return null;
            }
        }
       
    }
}
