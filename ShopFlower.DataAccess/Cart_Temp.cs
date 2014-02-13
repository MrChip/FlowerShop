using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataAccess
{
    public class Cart_Temp
    {
        public int amount { get; set; }
        public Products_info pro { get; set; }

        /// <summary>
        /// Tìm sản phẩm đang chọn (ct) có trong danh sách hàng đã mua (list) chưa ?
        /// </summary>
        /// <param name="list"></param>
        /// <param name="ct"></param>
        /// <returns></returns>
        public static Cart_Temp Find(List<Cart_Temp> list,Cart_Temp ct)
        {
            foreach (Cart_Temp ct1 in list)
                if (ct1.pro.id == ct.pro.id)
                    return ct1;
            return null;
        }

        /// <summary>
        /// Tim mot sann pham co trong gio hang chua
        /// </summary>
        /// <param name="list"></param>
        /// <param name="ct"></param>
        /// <returns></returns>
        public static Cart_Temp FindProduct(List<Cart_Temp> list, int idPro)
        {
            foreach (Cart_Temp ct1 in list)
                if (ct1.pro.id == idPro)
                    return ct1;
            return null;
        }

        public static bool Delete(List<Cart_Temp> list, int idPro)
        {
            foreach (Cart_Temp ct1 in list)
                if (ct1.pro.id == idPro)
                {
                    list.Remove(ct1);
                    return true;
                }
            return false;
        }
        /// <summary>
        /// Cập nhật số lượng sản phẩm đã có (ct) trong danh sách hàng đã mua (list) với số lượng x
        /// </summary>
        /// <param name="list"></param>
        /// <param name="ct"></param>
        /// <param name="x"></param>
        /// <returns></returns>
        public static bool UpdateAmount(List<Cart_Temp> list, Cart_Temp ct,int x)
        {
            Cart_Temp ctemp = Find(list, ct);
            if (ctemp!=null)
            {
                ctemp.amount += x;
                return true;
            }
            return false;
        }
        public static double TongTien(List<Cart_Temp> list)
        {
            double tong = 0;
            foreach (Cart_Temp ct in list)
            {
                tong += (ct.amount * float.Parse((ct.pro.ppricecurrent.ToString())));
            }
            return tong;
        }
        public static int TongSoLuong(List<Cart_Temp> item)
        {
            int tong = 0;
            foreach (Cart_Temp ct in item)
            {
                tong += ct.amount;

            }
            return tong;
        }
    }

    
}
