using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;

/// <summary>
///User 的摘要说明
/// </summary>
public class Users
{
	public Users()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    public int uid;
    public string userName;
    public string passWord;

    public static int getUidByName(string username)
    {
        string sqlString = "select uid from t_user where userName='" + username + "'";
        SqlConnection con = SqlHelper.createCon();
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlString, con);
        int uid = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        return uid;
    }

}