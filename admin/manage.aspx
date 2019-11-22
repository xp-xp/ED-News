<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manage.aspx.cs" Inherits="admin_manage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>后台管理主页面</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="box">
        <div id="adminHeader">
            <div style="float:left">
            <asp:Label ID="lblUser" runat="server"></asp:Label>
            </div>
            <div style="float:right">
                <asp:Button ID="btnExit" runat="server" Text="退出系统" onclick="btnExit_Click" />
            </div>
            </div>
        <div class="splitDiv">
        </div>
        <div id="adminMenu">
            <asp:Button ID="btnAdd" runat="server" onclick="btnAdd_Click" Text="发布信息" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnManageLanmu" runat="server" Text="栏目管理" />
        </div>
        <div class="splitDiv">
        </div>
        <div id="adminContent">
            <asp:GridView ID="gvNews" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" ForeColor="#333333" GridLines="None" Width="1000px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="newId" HeaderText="编号">
                    <ItemStyle HorizontalAlign="Center" Width="50px" />
                    </asp:BoundField>
                    <asp:HyperLinkField DataNavigateUrlFields="newId" 
                        DataNavigateUrlFormatString="../shownews.aspx?id={0}" DataTextField="title" 
                        HeaderText="新闻标题" Target="_blank" />
                    <asp:BoundField DataField="userName" HeaderText="发布者">
                    <ItemStyle HorizontalAlign="Center" Width="70px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="lanMuName" HeaderText="栏目">
                    <ItemStyle HorizontalAlign="Center" Width="60px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="hitCount" HeaderText="点击数">
                    <ItemStyle HorizontalAlign="Center" Width="70px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="addTime" HeaderText="发布时间">
                    <ItemStyle HorizontalAlign="Center" Width="160px" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="修改">
                        <ItemTemplate>
                            <asp:LinkButton ID="lblEditNews" runat="server" onclick="lblEditNews_Click">编辑</asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="lbtnDelNews" runat="server" onclick="lbtnDelNews_Click">删除</asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="110px" />
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
    </div>
    
    </form>
</body>
</html>
