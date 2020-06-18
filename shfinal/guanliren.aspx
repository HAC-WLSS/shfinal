<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="guanliren.aspx.cs" Inherits="shfinal.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 45px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" >
        
            <asp:Panel ID="Panel1" runat="server" BorderStyle="Ridge" Width="1024px" style="background-image:url(image/back.jpg)" Height="333px" Direction="LeftToRight"  >
                <div style="text-align:center;font-size:40px;font-weight:bold;color:#eeda16">
                    <br />
                    欢迎管理员登陆<br />  
                    <asp:Button ID="Button1" runat="server" BackColor="#FF3300" BorderColor="#66CCFF" BorderStyle="Solid" OnClick="Button1_Click" style="height: 35px" Text="退出登陆" />
                    <br /> </div>
                <div style="text-align:center;font-size:40px" class="auto-style1">
                    <asp:Button ID="Button2" runat="server" BackColor="Lime" BorderColor="#66CCFF" BorderStyle="Solid" style="height: 35px" Text="查看员工信息" OnClick="Button2_Click" />
                    &nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" BackColor="Lime" BorderColor="#66CCFF" BorderStyle="Solid" style="height: 35px" Text="查看设备信息" OnClick="Button3_Click" />
                    &nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" BackColor="Lime" BorderColor="#66CCFF" BorderStyle="Solid" style="height: 35px" Text="查看部门信息" OnClick="Button4_Click" />
                    <br />
                    <div style="text-align:center;font-size:40px" class="auto-style1">
                    <asp:Button ID="Button5" runat="server" BackColor="#FFCC00" BorderColor="#66CCFF" BorderStyle="Solid" style="height: 35px" Text="编辑员工信息" OnClick="Button5_Click" />
                    &nbsp;&nbsp;
                    <asp:Button ID="Button6" runat="server" BackColor="#FFCC00" BorderColor="#66CCFF" BorderStyle="Solid" style="height: 35px" Text="编辑设备信息" OnClick="Button6_Click" />
                    &nbsp;&nbsp;
                    <asp:Button ID="Button7" runat="server" BackColor="#FFCC00" BorderColor="#66CCFF" BorderStyle="Solid" style="height: 35px" Text="编辑部门信息" OnClick="Button7_Click" />
                    <br />
                    <br /></div>
                    <div style="font-size:20px">
                        <br />
                        Copyright@17网络工程35谢汝森版权所有</div>
                    <br /> <br /> </div> 
                <br />
            </asp:Panel>
        
    </form>
</body>
</html>
