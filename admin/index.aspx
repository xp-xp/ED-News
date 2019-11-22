<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="admin_index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EDNews新闻网后台登录界面</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 250%;
            height: 220px;
        }
        .style3
        {
            width: 121px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <div id="userLogin">
        <div id="txtlogin">登录</div>
        <table class="style1">
            <tr>
                
                <td class="style3">
                    &nbsp;&nbsp;&nbsp;
                    用户名:</td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server" Height="28px" Width="175px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    密码:</td>
                <td>
                    <asp:TextBox ID="txtPassWord" runat="server" Height="25px" TextMode="Password" 
                        Width="173px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnLogin" runat="server" onclick="btnLogin_Click" Text="登录" 
                        Height="30px" Width="100px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
