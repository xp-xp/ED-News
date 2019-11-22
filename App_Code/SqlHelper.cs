using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;

/// <summary>
///SqlHelper 的摘要说明
/// </summary>
public class SqlHelper
{
	public SqlHelper()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    //本函数实现建立数据库链接并返回该链接
    //返回建立好的数据库链接
     

    public static SqlConnection createCon()
    {
        SqlConnection con=new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myCon"].ConnectionString);
        return con;
    }
    public static void excuteSql(string sqlString)
    {
        SqlConnection con = createCon();
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlString, con);
        cmd.ExecuteNonQuery();
        con.Close();
    }




    public static DataSet excuteDataSet(string sqlString)
    {
        SqlConnection con = createCon();
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(sqlString, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        con.Close();
        return ds;
    }
    public static int excuteInt(string sqlString)
    {
        SqlConnection con = createCon();
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlString, con);
        int count = 0;
        count = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        return count;
    }

    public static bool excuteBool(string sqlString)
    {
        SqlConnection con = createCon();
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlString, con);
        bool result = true;
        try
        {
            cmd.ExecuteNonQuery();

        }
        catch
        {
            result = false;
        }
        
        con.Close();
        return result;
    }
}