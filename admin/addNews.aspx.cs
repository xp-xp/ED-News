using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_adNews : System.Web.UI.Page
{
    Users u;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
            Response.Redirect("index.aspx");
        else
            u = (Users)Session["user"];
        //if (IsPostBack)
        //{
            DDlLanMu.DataSource = News.getLanMuList();
            DDlLanMu.DataTextField = "lanMuName";
            DDlLanMu.DataValueField = "lanMuId";
            DDlLanMu.DataBind();
        //}
    }
    protected void DDlLanMu_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        News n = new News();
        n.title = txtTitle.Text;
        n.contents = content1.Value;
        n.addTime = DateTime.Now;
        n.hitCount = 0;
        n.lanMuId = Convert.ToInt32(DDlLanMu.SelectedValue);
        n.uid = u.uid;
        n.img = txtImgUrl.Text;
        if (News.addNews(n) == true)
            Response.Write("<script>alert('发布成功!')</script>");
        else
            Response.Write("<script>alert('发布失败!')</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("manage.aspx");
    }
}