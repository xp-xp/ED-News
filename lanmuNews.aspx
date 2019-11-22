<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lanmuNews.aspx.cs" Inherits="showLanMuNews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>栏目新闻</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="box">
        <div id="header"></div>
        <div class="line2"></div>
        <div id="lan">
            <asp:Label ID="llanMuName" runat="server"></asp:Label>
        <asp:GridView ID="gvLanMuNews" runat="server" AutoGenerateColumns="False" Width="100%" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="newId" 
                        DataNavigateUrlFormatString="showNews.aspx?id={0}" DataTextField="title" 
                        Target="_blank" HeaderText="新闻标题">
                    <ItemStyle Width="300px" HorizontalAlign="Center" />
                    </asp:HyperLinkField>
                    <asp:BoundField DataField="addTime" DataFormatString="{0:yy-MM-dd}" HeaderText="发布日期">
                    <ItemStyle HorizontalAlign="Center" Width="80px" />
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