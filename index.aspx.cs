using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    public string pics;
    public string texts;
    public string links;
    public string Id;
    public string Name;

    protected void Page_Load(object sender, EventArgs e)
    {

        News.getPics(ref pics, ref texts, ref links);
        LanMu.getLanMuIdAndName(ref Id, ref Name);
        gvNews.DataSource = SqlHelper.excuteDataSet("select * from t_news  order by addTime DESC");
        gvNews.DataBind();
        gvLanmu1.DataSource = SqlHelper.excuteDataSet("select * from t_news  order by addTime DESC");
        gvLanmu1.DataBind();
        gvLanmu2.DataSource = SqlHelper.excuteDataSet("select * from t_news  order by addTime DESC");
        gvLanmu2.DataBind();
        gvLanmu3.DataSource = SqlHelper.excuteDataSet("select * from t_news  order by addTime DESC");
        gvLanmu3.DataBind();
    }
    protected void bts_Click(object sender, EventArgs e)
    {
        string title= stxtBox.Text;    
        
        if (title == "")
        {
            Response.Write("<script>alert('请输入需要搜索的信息！')</script>");
        }
        else
        {
            int searchCount = News.searchCount(title);
            if (searchCount != 0)
            {
                Session["title"] = title;
                Session["searchCount"] = searchCount;                         
                Response.Write("<script>window.open(\"sousuo.aspx\",\"blank\")</script>");
                
            }
            else
            {
                Response.Write("<script>alert('没有该新闻信息！')</script>");
            }
        }
    }
    }
