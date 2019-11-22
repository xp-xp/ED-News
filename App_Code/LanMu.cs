using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;

/// <summary>
/// LanMu 的摘要说明
/// </summary>
public class LanMu
{
    public LanMu()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    public int lanMuId;
    public string lanMuName;
    public static DataSet getLanMuList()
    {
        string sqlString = "select * from t_lanMu";
        return SqlHelper.excuteDataSet(sqlString);
    }
    public static LanMu getLanMuNameById(int id)
    {
        LanMu l = new LanMu();
        string sqlString = "select lanMuName from t_lanMu where lanMuId=" + id;
        SqlConnection con = SqlHelper.createCon();
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlString, con);
        SqlDataReader sdr = cmd.ExecuteReader();
        while (sdr.Read())
        {
            l.lanMuName = Convert.ToString(sdr[0]);
        }
        con.Close();
        return l;
    }
    public static void getLanMuIdAndName(ref string Id, ref string Name)
    {
        string sqlString = "select top 11 lanMuId,lanMuName from t_lanMu  order by  lanMuId";
        SqlConnection con = SqlHelper.createCon();
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlString, con);
        SqlDataReader sdr = cmd.ExecuteReader();
        while (sdr.Read())
        {
            Id += "lanmuNews.aspx?id=" + sdr[0].ToString() + "\",\"";
            Name += sdr[1].ToString() + "\",\"";
        }
        Id = Id.Substring(0, Id.Length - 3);
        Name = Name.Substring(0, Name.Length - 3);
    }

}

