<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yuangongxinxi.aspx.cs" Inherits="shfinal.yuangongxinxi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" BorderStyle="Ridge" Width="1024px" style="background-image:url(image/back1.jpg)" Height="700px" Direction="LeftToRight"  >
       
                    <asp:Button ID="Button1" runat="server" BackColor="#66FF33" BorderColor="#66FF33" BorderStyle="Solid" OnClick="Button1_Click" style="height: 35px" Text="返回员工主页" />
                    
            <div style="text-align:center;font-size:40px;font-weight:bold;color:#ff0000">
                    员工信息查询<br /></div>
                    <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Employee] WHERE ([人员编号] = @人员编号)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="人员编号" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    人员编号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp;<asp:Button ID="Button2" runat="server" Text="查询" OnClick="Button2_Click" />
                    <br />
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="人员编号" DataSourceID="SqlDataSource2" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="人员编号" HeaderText="人员编号" ReadOnly="True" SortExpression="人员编号" />
                            <asp:BoundField DataField="密码" HeaderText="密码" SortExpression="密码" />
                            <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                            <asp:BoundField DataField="联络电话" HeaderText="联络电话" SortExpression="联络电话" />
                            <asp:CheckBoxField DataField="是否管理人" HeaderText="是否管理人" SortExpression="是否管理人" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
            <br />
                <div style="text-align:center;font-size:25px" class="auto-style2"  >
                  <div style="text-align:center;font-size:20px;font-weight:bold;color:#133bf1">
                        <br />
                        全部人员信息：<br /></div>
                    <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="1019px" AllowPaging="True" Height="124px" AutoGenerateColumns="False" DataKeyNames="人员编号">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="人员编号" HeaderText="人员编号" ReadOnly="True" SortExpression="人员编号" />
                            <asp:BoundField DataField="密码" HeaderText="密码" SortExpression="密码" />
                            <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                            <asp:BoundField DataField="联络电话" HeaderText="联络电话" SortExpression="联络电话" />
                            <asp:CheckBoxField DataField="是否管理人" HeaderText="是否管理人" SortExpression="是否管理人" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                    <br />
                    <div style="font-size:20px">
                        Copyright@17网络工程35谢汝森版权所有</div>
                    <br /> <br /> </div> 
                <br />
            </asp:Panel>
    </form>
</body>
</html>
