using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_manage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Write("<script>alert('您尚未登录！')</script>");
            Response.Redirect("index.aspx");
        }
        else
        {
            Users u = (Users)Session["user"];
            lblUser.Text = "欢迎:" + u.userName;
        }

        showNewsList();
    }

    private void showNewsList()
    {
        gvNews.DataSource = News.getNewsList();
        gvNews.DataBind();
    }

    protected void btnExit_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Response.Write("<script>window.close()</script>");
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Response.Redirect("addNews.aspx");
    }
    protected void lblEditNews_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        GridViewRow gvr = (GridViewRow)btn.NamingContainer;
        string id = gvr.Cells[0].Text;
        Response.Redirect("editeNews.aspx?id=" + id);
    }
    protected void lbtnDelNews_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        GridViewRow gvr = (GridViewRow)btn.NamingContainer;
        string id = gvr.Cells[0].Text;
        if (News.delNews(id) == true)
        {
            Response.Write("<script>alert('删除成功!')</script>");
            showNewsList();
        }
        else
            Response.Write("<script>alert('删除失败!')</script>");
    }
}