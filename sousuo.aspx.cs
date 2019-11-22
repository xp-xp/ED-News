using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        string title = Session["title"].ToString();
        int searchCount = Convert.ToInt32(Session["searchCount"]);
        gvResulet.DataSource= SqlHelper.excuteDataSet("select * from View_News where title like '%" + title + "%'");
        gvResulet.DataBind();
        
    
    }
}