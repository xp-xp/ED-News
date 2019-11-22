<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sousuo.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>搜索结果</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="box">
        <div id="header"></div>
        <div class="line2"></div>
        <img src="img/搜索结果.png"/>
        <div id="searchResult">  
        <asp:GridView ID="gvResulet" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="1000px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="newId" HeaderText="编号">
                <ItemStyle HorizontalAlign="Center" Width="5%" />
                </asp:BoundField>
                <asp:HyperLinkField DataNavigateUrlFields="newId" 
                    DataNavigateUrlFormatString="shownews.aspx?id={0}" DataTextField="title" 
                    HeaderText="新闻标题" Target="_blank">
                <ItemStyle HorizontalAlign="Center" Width="35%" />
                </asp:HyperLinkField>
                <asp:BoundField DataField="userName" HeaderText="发布者">
                <ItemStyle HorizontalAlign="Center" Width="10%" />
                </asp:BoundField>
                <asp:BoundField DataField="hitCount" HeaderText="点击数">
                <ItemStyle HorizontalAlign="Center" Width="10%" />
                </asp:BoundField>
                <asp:BoundField DataField="addTime" DataFormatString="{0:yy-MM-dd}" HeaderText="发布日期">
                <ItemStyle HorizontalAlign="Center" Width="20%" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        </div>
        <div id="youqing">客服热线：884800000      版权所有：xp</div>         
        <div id="footer">
            [<a href="admin/index.aspx" target="_blank">后台管理</a>]
        </div>
    </div>
    </form>
</body>
</html>
