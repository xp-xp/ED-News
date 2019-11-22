using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class showLanMuNews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string url = Request.RawUrl;
        int begin = url.IndexOf("=") + 1;
        int last = url.Length + 1;
        int lanMuiId = Convert.ToInt32(url.Substring(begin, last - begin - 1));

        LanMu lan = new LanMu();
        lan = LanMu.getLanMuNameById(lanMuiId);
        llanMuName.Text = "您现在观看的栏目是：" + lan.lanMuName;
        gvLanMuNews.DataSource = SqlHelper.excuteDataSet("select * from t_news where lanMuId=" + lanMuiId + "order by addTime DESC");
        gvLanMuNews.DataBind();
    }
}