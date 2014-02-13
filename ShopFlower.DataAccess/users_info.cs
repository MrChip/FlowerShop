using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Core;

namespace DataAccess
{
    public class users_info
    {
        #region KHAI BÁO CÁC ĐỐI TƯỢNG VÀ BIẾN CẦN DÙNG
        // Các thuộc tính của lớp 
        public int id { get; set; }
        public string username { get; set; }
        public string email { get; set; }
        public string password { get; set; }
        public string fullname { get; set; }
        public string address { get; set; }
        public string birdthday { get; set; }
        public string phone { get; set; }
        public string rolecode { get; set; }
        public bool status { get; set; }
        
        #endregion


        public static users_info Checkuser(string username)
        {
            return CBO.FillObject<users_info>(DataProvider.Instance.ExecuteReader("users_checkuser", username));
        }
        public static users_info getBy_id(int id)
        {
            return CBO.FillObject<users_info>(DataProvider.Instance.ExecuteReader("users_getbyid", id));
        }
        public static bool Add(string username, string email, string password, string fullname, string add, string btd, string phone, string role, bool status)
        {
            try
            {
                object rs = DataProvider.Instance.ExecuteNonQuery("users_add", username, email, password, fullname, add, btd, phone, role, status);
                return Convert.ToInt32(rs) > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static users_info checkemail(string p)
        {
            return CBO.FillObject<users_info>(DataProvider.Instance.ExecuteReader("users_checkmail", p));
        }
        public static bool Update(int id, string email, string pass, string fullname, string address, string dob, string phone, string role, bool status)
        {
            try
            {
                object rs = DataProvider.Instance.ExecuteNonQuery("users_Update", id, email, pass, fullname, address, dob, phone, role, status);
                return Convert.ToInt32(rs) > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static bool Update(users_info us)
        {
            return Update(us.id, us.email, us.password, us.fullname, us.address, us.birdthday, us.phone, us.rolecode, us.status);
        }

        public static bool doipass(int id, string pass)
        {
            try
            {
                object rs = DataProvider.Instance.ExecuteNonQuery("users_doipass", id, pass);
                return Convert.ToInt32(rs) > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static List<users_info> GetAll()
        {
            return CBO.FillCollection<users_info>(DataProvider.Instance.ExecuteReader("users_getall"));
        }


        public static bool Delete(int id)
        {
            try
            {
                int rs = DataProvider.Instance.ExecuteNonQuery("users_Delete", id);
                return rs > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
