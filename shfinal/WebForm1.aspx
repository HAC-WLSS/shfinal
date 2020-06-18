<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="shfinal.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" >
        
            <asp:Panel ID="Panel1" runat="server" BorderStyle="Ridge" Width="1024px" style="background-image:url(image/back.jpg)" Height="320px" Direction="LeftToRight" HorizontalAlign="Center" >
                <div style="text-align:center;font-size:40px;font-weight:bold;color:#eeda16">
                    <br />
                    网络设备保管及查询系统<br /> <br /> </div> <div style="text-align:center">用户账号：<asp:TextBox ID="TextBox1" runat="server" BorderColor="#FF3300" BorderStyle="Solid"></asp:TextBox>
                <br />
                输入密码：<asp:TextBox ID="TextBox2" runat="server" TextMode="Password" BackColor="White" BorderColor="#FF3300" BorderStyle="Solid"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label2" runat="server" ForeColor="#CC3300" Text="Label"></asp:Label>
                <br />
                <asp:Button ID="Button1" runat="server" Text="管理员登录" OnClick="Button1_Click" style="height: 27px" BackColor="Lime" BorderColor="#66CCFF" BorderStyle="Solid" />
                    &nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="员工登录" BackColor="Lime" BorderColor="#66CCFF" BorderStyle="Solid" />
                    &nbsp; &nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="取消" BackColor="Lime" BorderColor="#66CCFF" BorderStyle="Solid" />
&nbsp;
                </div>
                <br />
                Copyright@17网络工程35谢汝森版权所有<br />
            </asp:Panel>
        
    </form>
</body>
</html>
