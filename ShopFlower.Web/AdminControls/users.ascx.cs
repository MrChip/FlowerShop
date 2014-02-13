using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;
namespace FlowerShop.AdminControls
{
    public partial class users : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Load_List();
                MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void Load_List()
        {
            
            Repeater1.DataSource = users_info.GetAll();
            Repeater1.DataBind();
        }

        
        protected void Delete_Load(object sender, EventArgs e)
        {
            ((LinkButton)sender).Attributes["onclick"] = "return confirm('Bạn có muốn xóa User này không?')";
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            //usser 1
            //danh muc 2
            //san pham 3
            //dat hang 4
            //tin tuc 5
            //lien he 6
            int id = Convert.ToInt32(HiddenField1.Value);
            string role = "";
            if (roleuser.Checked == true)
            {
                role += "0";
            }
            if (e_user.Checked == true)
            {
                role += "|1";
            }
            if (e_danhmuc.Checked == true)
            {
                role += "|2";
            }
            if (e_sanpham.Checked == true)
            {
                role += "|3";
            }
            if (e_dathang.Checked == true)
            {
                role += "|4";
            }
            if (e_tintuc.Checked == true)
            {
                role += "|5";
            }
            if (e_lienhe.Checked == true)
            {
                role += "|6";
            }
            bool status = false;
            if (ckbStatus.Checked == true)
            {
                status = true;
            }
            string pass;
            if (e_pass.Text.Trim() == "")//khong thay doi
            {
                pass = HiddenField_Pass.Value;
            }

            else
            {
                pass = HamXuLy.MaHoa(e_pass.Text.Trim());
            }
           
            users_info.Update(id, e_email.Text.Trim(), pass, e_fullname.Text, e_add.Text, e_dob.Text, e_phone.Text, role, status);

            ScriptManager.RegisterStartupScript(
    this, this.GetType(), "alert",
    "alert('Cập nhật thành công');location.href='admin.aspx?page=user';", true);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string name = e.CommandName;
            int id = Convert.ToInt32(e.CommandArgument.ToString());
            users_info us = users_info.getBy_id(id);
            switch (name)
            {
                case "edit":
                   
                    if (us !=null)
                    {
                        HiddenField1.Value = id.ToString();
                        HiddenField_Pass.Value = us.password;
                        MultiView1.ActiveViewIndex = 1;
                        e_username.Text = us.username;
                        e_email.Text = us.email;
                      
                        //e_pass.Text = us.password;
                        e_fullname.Text = us.fullname;
                        e_add.Text = us.address;
                        e_dob.Text = us.birdthday;
                        e_phone.Text = us.phone;
                        string[] role = us.rolecode.Split('|');
                        if (role.Length > 0)
                        {
                            //usser 1
                            //danh muc 2
                            //san pham 3
                            //dat hang 4
                            //tin tuc 5
                            //lien he 6
                            for (int i = 0; i < role.Length; i++)
                            {
                                if (role[i].Equals("0"))
                                {
                                    roleuser.Checked = true;
                                }
                                if (role[i].Equals("1"))
                                {
                                    e_user.Checked = true;
                                }
                                if (role[i].Equals("2"))
                                {
                                    e_danhmuc.Checked = true;
                                }
                                if (role[i].Equals("3"))
                                {
                                    e_sanpham.Checked = true;
                                }
                                if (role[i].Equals("4"))
                                {
                                    e_dathang.Checked = true;
                                }
                                if (role[i].Equals("5"))
                                {
                                    e_tintuc.Checked = true;
                                }
                                if (role[i].Equals("6"))
                                {
                                    e_lienhe.Checked = true;
                                }
                            }
                        }
                        if (us.status)
                        {
                            ckbStatus.Checked = true;
                        }
                        else
                        {
                            ckbStatus.Checked = false;
                        }
                    }
                    break;

                case "del":
                    users_info.Delete(id);
                    Load_List();
                    break;
                case "status":
                    
                    if (us.status == true)
                    {
                        us.status = false;
                    }
                    else
                    {
                        us.status = true;
                    }
                    users_info.Update(id,us.email,us.password,us.fullname,us.address,us.birdthday,us.phone,us.rolecode,us.status);
                    Load_List();
                    break;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (n_email.Text.Trim().Equals(""))
            {
                ltmsg.Text = "Tên đăng nhập không thể bỏ trống";
                n_email.Focus();
                return;
            }
            if (n_pass1.Text.Trim().Equals("") || n_pass2.Text.Trim().Equals(""))
            {
                ltmsg.Text = "Mật khẩu không thể bỏ trống và phải trùng khớp";
                n_pass1.Focus();
                return;
            }
            if (n_pass1.Text.Trim().Length < 6 || n_pass2.Text.Trim().Length < 6)
            {
                ltmsg.Text = "Mật khẩu phải có ít nhất 6 ký tự và phải trùng khớp";
                n_pass1.Focus();
                return;
            }
            if (!n_pass1.Text.Trim().Equals(n_pass2.Text.Trim()))
            {
                ltmsg.Text = "Mật khẩu không khớp nhau";
                n_pass1.Focus();
                return;
            }
            users_info us=users_info.Checkuser(n_username.Text.Trim());
            if (us!=null)
            {
                ltmsg.Text = "Tên đăng nhập này đã được đăng ký bởi 1 tài khoản khác";
                n_username.Focus();
                return;
            }
            else
            {
                //usser 1
                //danh muc 2
                //san pham 3
                //dat hang 4
                //tin tuc 5
                //lien he 6
                string role = "";

                if (CheckBox2.Checked == true)
                {
                    role += "0";
                }
                if (n_cbkUser.Checked == true)
                {
                    role += "|1";
                }
                if (n_cbkDanhMuc.Checked == true)
                {
                    role += "|2";
                }
                if (n_cbkSanPham.Checked == true)
                {
                    role += "|3";
                }
                if (n_cbkdathang.Checked == true)
                {
                    role += "|4";
                }
                if (n_cbktintuc.Checked == true)
                {
                    role += "|5";
                }
                if (n_cbklienhe.Checked == true)
                {
                    role += "|6";
                }
                bool status = false;
                if (n_status.Checked == true)
                {
                    status = true;
                }

                try
                {
                    
                    users_info.Add(n_username.Text.Trim(), n_email.Text.Trim(), HamXuLy.MaHoa( n_pass1.Text.Trim()), fuulname.Text, n_add.Text, n_txtNgaySinh.Text, n_phone.Text, role, status);
                }
                catch
                {
                    ltmsg.Text = "Lỗi khi thêm tài khoản! kiểm tra lại";
                }
                ltmsg.Text = "";
                ScriptManager.RegisterStartupScript(
   this, this.GetType(), "alert",
   "alert('Thêm thành công');location.href='admin.aspx?page=user';", true);
            }
        }
    }
}