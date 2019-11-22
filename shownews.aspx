<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shownews.aspx.cs" Inherits="shownews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>查看新闻页面</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
     <form id="form1" runat="server">
    <div id="box">
        <div id="aa">
            <div id="header">
                    </div>
                    <div class="splitDiv">
                    </div>
                    <div id="main">
                        
                        
                            <div id="newsTitle">
                            <asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label>
                        </div>
                        <div id="line"></div>
                        <div id="newsInfo">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblAddTime" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblHitCount" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblAuthor" runat="server"></asp:Label>
                        </div>
                        <div id="newsContent">
                            <asp:Label ID="lblContent" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                   
                      <div id="footer">
                        [<a href="admin/index.aspx" target="_blank">后台管理</a>]
                    </div>
                </div>
        </div>
        
        
    </form>
</body>
</html>
