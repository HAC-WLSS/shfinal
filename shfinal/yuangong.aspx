<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yuangong.aspx.cs" Inherits="shfinal.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" BorderStyle="Ridge" Width="1024px" style="background-image:url(image/back.jpg)" Height="320px" Direction="LeftToRight"  >
                <div style="text-align:center;font-size:40px;font-weight:bold;color:#eeda16">
                    <br />
                    欢迎管员工登陆<br />  
                    <asp:Button ID="Button1" runat="server" BackColor="#FF3300" BorderColor="#66CCFF" BorderStyle="Solid" OnClick="Button1_Click" style="height: 35px" Text="退出登陆" />
                    <br /> </div>
                <div style="text-align:center;font-size:40px" class="auto-style1">
                    <asp:Button ID="Button2" runat="server" BackColor="Lime" BorderColor="#66CCFF" BorderStyle="Solid" style="height: 35px" Text="查看员工信息" OnClick="Button2_Click" />
                    &nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" BackColor="Lime" BorderColor="#66CCFF" BorderStyle="Solid" style="height: 35px" Text="查看设备信息" OnClick="Button3_Click" />
                    &nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" BackColor="Lime" BorderColor="#66CCFF" BorderStyle="Solid" style="height: 35px" Text="查看部门信息" OnClick="Button4_Click" />
                    <br />
                    <br />
                    <div style="font-size:20px">
                        Copyright@17网络工程35谢汝森版权所有</div>
                    <br /> <br /> </div> 
                <br />
            </asp:Panel>
    </form>
</body>
</html>
