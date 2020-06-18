<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bumenxinxi2.aspx.cs" Inherits="shfinal.bumenxinxi2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <asp:Panel ID="Panel1" runat="server" BorderStyle="Ridge" Width="1024px" style="background-image:url(image/back1.jpg)" Height="620px" Direction="LeftToRight"  >
       
                    <asp:Button ID="Button1" runat="server" BackColor="#66FF33" BorderColor="#66FF33" BorderStyle="Solid" OnClick="Button1_Click" style="height: 35px" Text="返回管理人主页" />
                    
            <div style="text-align:center;font-size:40px;font-weight:bold;color:#ff0000">
                    部门信息查询<br /></div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Department]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Department] WHERE ([部门代号] = @部门代号)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="部门代号" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    部门代号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="查询" />
                    <br />
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="部门代号" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="部门代号" HeaderText="部门代号" ReadOnly="True" SortExpression="部门代号" />
                            <asp:BoundField DataField="部门名称" HeaderText="部门名称" SortExpression="部门名称" />
                            <asp:BoundField DataField="部门主管" HeaderText="部门主管" SortExpression="部门主管" />
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
                    <div style="text-align:center;font-size:20px;font-weight:bold;color:#133bf1">
                        <br />
                    全部部门信息：<br /></div>
                <div style="text-align:center;font-size:25px" class="auto-style2"  >
                    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="部门代号" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="1022px">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="部门代号" HeaderText="部门代号" ReadOnly="True" SortExpression="部门代号" />
                            <asp:BoundField DataField="部门名称" HeaderText="部门名称" SortExpression="部门名称" />
                            <asp:BoundField DataField="部门主管" HeaderText="部门主管" SortExpression="部门主管" />
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
                    <br />
                    <div style="font-size:20px">
                        Copyright@17网络工程35谢汝森版权所有</div>
                    <br /> <br /> </div> 
                <br />
            </asp:Panel>
    </form>
</body>
</html>
