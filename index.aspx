<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>欢迎访问</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
        <script src="http://libs.baidu.com/jquery/1.9.1/jquery.js">
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="box">
        <div id="header"></div>   
        <div id="sholist">
        <ul id="list1">
            
        </ul>
        </div>
        <div id="sousuo">
        
         
            <asp:TextBox ID="stxtBox" runat="server"></asp:TextBox>
            <asp:Button ID="bts" 
                runat="server"  Text="搜索" onclick="bts_Click" Width="60px" />
        </div>
   
        <div id="main">
            <div id="left">
            <script type="text/javascript" language="JavaScript">
                var focus_width = 490
                var focus_height = 280
                var text_height = 20
                var swf_height = focus_height + text_height
                var pics ="<%=pics %>";
                var links = "<%=links %>";
                var texts = "<%=texts %>";


                document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="' + focus_width + '" height="' + swf_height + '">');
                document.write('<param name="allowScriptAccess" value="sameDomain"><param name="movie" value="images/playswf.swf"><param name="quality" value="high"><param name="bgcolor" value="#FFFFFF">');
                document.write('<param name="menu" value="false"/><param name=wmode value="opaque"/>');
                document.write('<param name="FlashVars" value="pics=' + pics + '&links=' + links + '&texts=' + texts + '&borderwidth=' + focus_width + '&borderheight=' + focus_height + '&textheight=' + text_height + '">');
                document.write('<embed src="images/playswf.swf" wmode="opaque" FlashVars="pics=' + pics + '&links=' + links + '&texts=' + texts + '&borderwidth=' + focus_width + '&borderheight=' + focus_height + '&textheight=' + text_height + '" menu="false" bgcolor="#FFFFFF" quality="high" width="' + focus_width + '" height="' + swf_height + '" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');
                document.write('</object>');

                var Id = ["<%=Id%>"];
                var Name = ["<%=Name%>"];

                for (var i = 0; i < Id.length; i++)
                    $("#list1").append("<li><a href=\"" + Id[i] + "\" target=\"_blank\">  " + Name[i] + "</a></li>");      
          </script> 
            </div>
            <div id="right">
                <asp:GridView ID="gvNews" runat="server" AutoGenerateColumns="False" 
                    ShowHeader="False" Height="280px" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFormatString="shownews.aspx?id={0:}" 
                            DataTextField="title" DataNavigateUrlFields="newid" Target="_blank">
                        <ItemStyle Width="410px" CssClass="mlength"/>
                        </asp:HyperLinkField>
                        <asp:BoundField DataField="addTime" DataFormatString="{0:[yy-MM-dd]}">
                        <ItemStyle Width="90px" HorizontalAlign="Right" />
                        </asp:BoundField>
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
            <div class="splitDiv"></div>

            <div id="modile">
            <div id="Div1">
                <asp:GridView ID="gvLanmu1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" GridLines="Horizontal" 
                    Height="200px" Width="320px">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="newId" 
                            DataNavigateUrlFormatString="showNews.aspx?id={0}" DataTextField="title" 
                            HeaderText="新闻名" >
                        <ItemStyle Width="100px" CssClass="mlength"/>
                        </asp:HyperLinkField>
                        <asp:BoundField DataField="addTime" DataFormatString="{0:yyyy-MM-dd}" 
                            HeaderText="发布时间">
                        <ItemStyle Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="hitCount" HeaderText="点击量">
                        <ItemStyle Width="100px" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>
                </div>
            <div id="Div2">
                <asp:GridView ID="gvLanmu2" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" ForeColor="Black" GridLines="Vertical" 
                    Height="200px" Width="320px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="newId" 
                            DataNavigateUrlFormatString="showNews.aspx?id={0}" DataTextField="title" 
                            HeaderText="新闻名">
                        <ItemStyle Width="100px" CssClass="mlength"/>
                        </asp:HyperLinkField>
                        <asp:BoundField DataField="addTime" DataFormatString="{0:yyyy-MM-dd}" 
                            HeaderText="发布时间">
                        <ItemStyle Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="hitCount" HeaderText="点击量">
                        <ItemStyle Width="100px" />
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
            <div id="Div3">
                <asp:GridView ID="gvLanmu3" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" 
                    Height="200px" Width="320px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="newId" 
                            DataNavigateUrlFormatString="showNews.aspx?id={0}" DataTextField="title" 
                            HeaderText="新闻名">
                        <ItemStyle Width="100px" CssClass="mlength"/>
                        </asp:HyperLinkField>
                        <asp:BoundField DataField="addTime" DataFormatString="{0:yyyy-MM-dd}" 
                            HeaderText="发布时间">
                        <ItemStyle Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="hitCount" HeaderText="点击量">
                        <ItemStyle Width="100px" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </div>
        </div>
        </div>     
        <div class="splitDiv"></div>
        <div id="youqing"><a href="https://www.sina.com.cn/" >客服热线：884800000      版权所有：xp</a></div>         
        <div id="footer">
            [<a href="admin/index.aspx" target="_blank">后台管理</a>]
        </div>
     </div>   
    </form>
</body>
</html>
