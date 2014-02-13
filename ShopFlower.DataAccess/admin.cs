using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for admin
/// </summary>
public class admin_user
{
    public static void addadmin(string username,string email, string password, string fullname,string add, string dob,string phone, string role, string status)
    {
        SqlCommand cmd = new SqlCommand("av8_add");
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@username", SqlDbType.NVarChar).Value = username;
        cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;
        cmd.Parameters.Add("@password", SqlDbType.NVarChar).Value = password;
        cmd.Parameters.Add("@fullname", SqlDbType.NVarChar).Value = fullname;
        cmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = add;
        cmd.Parameters.Add("@dob", SqlDbType.NVarChar).Value = dob;
        cmd.Parameters.Add("@phone", SqlDbType.NVarChar).Value = phone;
        cmd.Parameters.Add("@rolecode", SqlDbType.NVarChar).Value = role;
        cmd.Parameters.Add("@status", SqlDbType.NVarChar).Value = status;        
      
        ledinh.Exec(cmd);
    }
    public static void changepass(int id, string password)
    {
       
        SqlCommand cmd = new SqlCommand("changepass");
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
        cmd.Parameters.Add("@pass", SqlDbType.NVarChar).Value = password;      

        ledinh.Exec(cmd);
    }

    //delete
    public static void delete(int id)
    {
        SqlCommand cmd = new SqlCommand("av8_delete");
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
        ledinh.Exec(cmd);
    }

    //get admin
    public static DataTable Getadmin()
    {
        SqlCommand cmd = new SqlCommand("av8_getall");
        cmd.CommandType = CommandType.StoredProcedure;
        return ledinh.getData(cmd);
    }

    //get by id
    public static DataTable Getadminbyid(int id)
    {

        SqlCommand cmd = new SqlCommand("av8_get");
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
        
        return ledinh.getData(cmd);
    }

    //login
    public static int Checkpass(string password)
    {
        string str = "select count(*) from av8 where password='" + password + "'";
        SqlCommand CMD = new SqlCommand(str, ledinh.getconnect());
        int i = (int) CMD.ExecuteScalar();
        return i;
    }

    public static DataTable Checkuser(string username)
    {
        SqlCommand cmd = new SqlCommand("av8_checkuser");
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@username", SqlDbType.NVarChar).Value = username;

        return ledinh.getData(cmd);
    }
    public static DataTable Checkemail(string email)
    {
        SqlCommand cmd = new SqlCommand("av8_checkemail");
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;

        return ledinh.getData(cmd);
    }

    //update status 
    public static void update_admin(int id,string email,string pass,string fullname,string address,string dob,string phone,string role, string status)
    {
        SqlCommand cmd = new SqlCommand("av8_update");
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
        cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;
        cmd.Parameters.Add("@password", SqlDbType.NVarChar).Value = pass;
        cmd.Parameters.Add("@fullname", SqlDbType.NVarChar).Value = fullname;
        cmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = address;
        cmd.Parameters.Add("@dob", SqlDbType.NVarChar).Value = dob;
        cmd.Parameters.Add("@phone", SqlDbType.NVarChar).Value = phone;
        cmd.Parameters.Add("@rolecode", SqlDbType.NVarChar).Value =role; 
        cmd.Parameters.Add("@status", SqlDbType.NVarChar).Value = status; 
        ledinh.Exec(cmd);
    }

    public static void update_myinfo(int id, string email,string fullname, string address, string dob, string phone)
    {
        SqlCommand cmd = new SqlCommand("av8_updateinfo");
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
        cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;      
        cmd.Parameters.Add("@fullname", SqlDbType.NVarChar).Value = fullname;
        cmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = address;
        cmd.Parameters.Add("@dob", SqlDbType.NVarChar).Value = dob;
        cmd.Parameters.Add("@phone", SqlDbType.NVarChar).Value = phone;
       
        ledinh.Exec(cmd);
    }
}