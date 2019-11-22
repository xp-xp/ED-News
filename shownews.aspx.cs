using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class shownews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.QueryString["id"]!=null)
        {
            string id=Request.QueryString["id"].ToString();
            News.addHitCount(id);
            News n = News.getNewsById(id);
            lblTitle.Text = n.title;
            lblContent.Text = n.contents;
            lblAddTime.Text = "发布时间:" + n.addTime.ToString();
            lblAuthor.Text = "发布者:" + n.newid;
            lblHitCount.Text = "点击数:" + n.hitCount;
        }
       
    }
}