<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shebeixinxi.aspx.cs" Inherits="shfinal.shebeixinxi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" BorderStyle="Ridge" Width="1100px" style="background-image:url(image/back1.jpg)" Height="850px" Direction="LeftToRight"  >
       
                    <asp:Button ID="Button1" runat="server" BackColor="#66FF33" BorderColor="#66FF33" BorderStyle="Solid" OnClick="Button1_Click" style="height: 35px" Text="返回员工主页" />
                    
            <div style="text-align:center;font-size:40px;font-weight:bold;color:#ff0000">
                    设备信息查询<br /></div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Equipment]" DeleteCommand="DELETE FROM [Equipment] WHERE [设备编号] = @设备编号" InsertCommand="INSERT INTO [Equipment] ([设备编号], [设备名称], [设备规格], [设备图片], [价格], [购入日期], [存放位置], [设备负责人]) VALUES (@设备编号, @设备名称, @设备规格, @设备图片, @价格, @购入日期, @存放位置, @设备负责人)" UpdateCommand="UPDATE [Equipment] SET [设备名称] = @设备名称, [设备规格] = @设备规格, [设备图片] = @设备图片, [价格] = @价格, [购入日期] = @购入日期, [存放位置] = @存放位置, [设备负责人] = @设备负责人 WHERE [设备编号] = @设备编号">
                        <DeleteParameters>
                            <asp:Parameter Name="设备编号" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="设备编号" Type="String" />
                            <asp:Parameter Name="设备名称" Type="String" />
                            <asp:Parameter Name="设备规格" Type="String" />
                            <asp:Parameter Name="设备图片" Type="String" />
                            <asp:Parameter Name="价格" Type="Decimal" />
                            <asp:Parameter Name="购入日期" Type="String" />
                            <asp:Parameter Name="存放位置" Type="String" />
                            <asp:Parameter Name="设备负责人" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="设备名称" Type="String" />
                            <asp:Parameter Name="设备规格" Type="String" />
                            <asp:Parameter Name="设备图片" Type="String" />
                            <asp:Parameter Name="价格" Type="Decimal" />
                            <asp:Parameter Name="购入日期" Type="String" />
                            <asp:Parameter Name="存放位置" Type="String" />
                            <asp:Parameter Name="设备负责人" Type="String" />
                            <asp:Parameter Name="设备编号" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Equipment] WHERE ([设备编号] = @设备编号)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="设备编号" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    设备编号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="查询" />
                    <br />
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="设备编号" DataSourceID="SqlDataSource2" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="设备编号" HeaderText="设备编号" ReadOnly="True" SortExpression="设备编号" />
                            <asp:BoundField DataField="设备名称" HeaderText="设备名称" SortExpression="设备名称" />
                            <asp:BoundField DataField="设备规格" HeaderText="设备规格" SortExpression="设备规格" />
                            <asp:BoundField DataField="设备图片" HeaderText="设备图片" SortExpression="设备图片" />
                            <asp:BoundField DataField="价格" HeaderText="价格" SortExpression="价格" />
                            <asp:BoundField DataField="购入日期" HeaderText="购入日期" SortExpression="购入日期" />
                            <asp:BoundField DataField="存放位置" HeaderText="存放位置" SortExpression="存放位置" />
                            <asp:BoundField DataField="设备负责人" HeaderText="设备负责人" SortExpression="设备负责人" />
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
                        全部设备信息：<br /></div>
            <div style="text-align:center;font-size:25px" class="auto-style2"  >
                    <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="1024px" AllowPaging="True" Height="124px" AutoGenerateColumns="False" DataKeyNames="设备编号" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" >
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="设备编号" HeaderText="设备编号" ReadOnly="True" SortExpression="设备编号" />
                            <asp:BoundField DataField="设备名称" HeaderText="设备名称" SortExpression="设备名称" />
                            <asp:BoundField DataField="设备规格" HeaderText="设备规格" SortExpression="设备规格" />
                            <asp:BoundField DataField="设备图片" HeaderText="设备图片" SortExpression="设备图片" />
                            <asp:BoundField DataField="价格" HeaderText="价格" SortExpression="价格" />
                            <asp:BoundField DataField="购入日期" HeaderText="购入日期" SortExpression="购入日期" />
                            <asp:BoundField DataField="存放位置" HeaderText="存放位置" SortExpression="存放位置" />
                            <asp:BoundField DataField="设备负责人" HeaderText="设备负责人" SortExpression="设备负责人" />
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
