using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;

/// <summary>
///News 的摘要说明
/// </summary>
public class News
{
	public News()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    public int newid;
    public string title;
    public string contents;
    public int uid;
    public DateTime addTime;
    public int lanMuId;
    public int hitCount;
    public string img;

   

    public static void getPics(ref string pics,ref string texts,ref string links)
    {
        string sqlString = "select top 5 newid,title,img from t_news where img<>'' order by addTime DESC";
        SqlConnection con = SqlHelper.createCon();
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlString, con);
        SqlDataReader sdr = cmd.ExecuteReader();
        while (sdr.Read())
        {
            pics += sdr[2].ToString() + "|";
            texts+=sdr[1].ToString()+"|";
            links+="shownews.aspx?id="+sdr[0].ToString()+"|";
        }
        pics = pics.Substring(0, pics.Length - 1);
        texts = texts.Substring(0, texts.Length - 1);
        links = links.Substring(0, links.Length - 1);

    }

    public static int searchCount(string title)
    {
        string sqlString = "select count(*) from t_news where title like '%" + title + "%'";
        return SqlHelper.excuteInt(sqlString);
    }
    public static void addHitCount(string id)
    {
        string sqlString="update t_news set hitCount=hitCount+1 where newid="+id;
        SqlHelper.excuteSql(sqlString);
    }

    public static DataSet getLanMuList()
    {
        string sqlString = "select * from t_lanMu";
        return SqlHelper.excuteDataSet(sqlString);

    }

    public static bool addNews(News n)
    {
        string sqlString="insert into t_news (title,contents,uid,addTime,lanMuId,hitCount,img) values('"+n.title+"','"+n.contents+"',"+n.uid+",'"+n.addTime+"',"+n.lanMuId+","+n.hitCount+",'"+n.img+"')";
        return SqlHelper.excuteBool(sqlString);
    }
    public static bool delNews(string id)
    {
        string sqlString = "delete from t_news where newid="+id;
        return SqlHelper.excuteBool(sqlString);
    }

    public static bool editNews(News n)
    {
        string sqlString = "update t_news set title='" + n.title + "', contents='" + n.contents + "', uid=" + n.uid + ", lanMuId=" + n.lanMuId + ",img='" + n.img + "' where newId=" + n.newid;
        return SqlHelper.excuteBool(sqlString);
    }

    public static DataSet getNewsList()
    {
        string sqlString = "select * from View_News order by addTime DESC";
        return SqlHelper.excuteDataSet(sqlString);

    }

    public static void excuteSql(string sqlString)
    {
        SqlConnection con = createCon();
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlString, con);
        cmd.ExecuteNonQuery();
        con.Close();
    }

    private static SqlConnection createCon()
    {
        throw new NotImplementedException();
    }


    public static News getNewsById(string id)
    {
        News news = new News();
        string sqlString = "select * from t_news where newid=" + id;
        SqlConnection con = SqlHelper.createCon();
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlString, con);
        SqlDataReader sdr = cmd.ExecuteReader();
        while (sdr.Read())
        {
            news.newid=Convert.ToInt32(sdr[0]);
            news.title=Convert.ToString(sdr[1]);
            news.contents=Convert.ToString(sdr[2]);
            news.uid=Convert.ToInt32(sdr[3]);
            news.addTime=Convert.ToDateTime(sdr[4]);
            news.lanMuId=Convert.ToInt32(sdr[5]);
            news.hitCount=Convert.ToInt32(sdr[6]);
            news.img = Convert.ToString(sdr[7]);

        }
        con.Close();
        return news;
    }
}