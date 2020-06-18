<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bianjibumen.aspx.cs" Inherits="shfinal.bianjibumen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" BorderStyle="Ridge" Width="700px" style="background-image:url(image/back1.jpg)" Height="400px" Direction="LeftToRight"  >
       
                    <asp:Button ID="Button1" runat="server" BackColor="#66FF33" BorderColor="#66FF33" BorderStyle="Solid" OnClick="Button1_Click" style="height: 35px" Text="返回管理人主页" />
                    
            <div style="text-align:center;font-size:40px;font-weight:bold;color:#ff0000">
                    部门信息<br /></div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Department]" DeleteCommand="DELETE FROM [Department] WHERE [部门代号] = @部门代号" InsertCommand="INSERT INTO [Department] ([部门代号], [部门名称], [部门主管]) VALUES (@部门代号, @部门名称, @部门主管)" UpdateCommand="UPDATE [Department] SET [部门名称] = @部门名称, [部门主管] = @部门主管 WHERE [部门代号] = @部门代号">
                        <DeleteParameters>
                            <asp:Parameter Name="部门代号" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="部门代号" Type="String" />
                            <asp:Parameter Name="部门名称" Type="String" />
                            <asp:Parameter Name="部门主管" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="部门名称" Type="String" />
                            <asp:Parameter Name="部门主管" Type="String" />
                            <asp:Parameter Name="部门代号" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                <div style="text-align:center;font-size:25px" class="auto-style2"  >
                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="部门代号" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                        <AlternatingItemTemplate>
                            <tr style="background-color: #FAFAD2; color: #284775;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                                </td>
                                <td>
                                    <asp:Label ID="部门代号Label" runat="server" Text='<%# Eval("部门代号") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="部门名称Label" runat="server" Text='<%# Eval("部门名称") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="部门主管Label" runat="server" Text='<%# Eval("部门主管") %>' />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="background-color: #FFCC66; color: #000080;">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                                </td>
                                <td>
                                    <asp:Label ID="部门代号Label1" runat="server" Text='<%# Eval("部门代号") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="部门名称TextBox" runat="server" Text='<%# Bind("部门名称") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="部门主管TextBox" runat="server" Text='<%# Bind("部门主管") %>' />
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                                <tr>
                                    <td>未返回数据。</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                                </td>
                                <td>
                                    <asp:TextBox ID="部门代号TextBox" runat="server" Text='<%# Bind("部门代号") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="部门名称TextBox" runat="server" Text='<%# Bind("部门名称") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="部门主管TextBox" runat="server" Text='<%# Bind("部门主管") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color: #FFFBD6; color: #333333;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                                </td>
                                <td>
                                    <asp:Label ID="部门代号Label" runat="server" Text='<%# Eval("部门代号") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="部门名称Label" runat="server" Text='<%# Eval("部门名称") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="部门主管Label" runat="server" Text='<%# Eval("部门主管") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr runat="server" style="background-color: #FFFBD6; color: #333333;">
                                                <th runat="server"></th>
                                                <th runat="server">部门代号</th>
                                                <th runat="server">部门名称</th>
                                                <th runat="server">部门主管</th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center; background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif; color: #333333;">
                                        <asp:DataPager ID="DataPager1" runat="server">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                            </Fields>
                                        </asp:DataPager>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <tr style="background-color: #FFCC66; font-weight: bold; color: #000080;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                                </td>
                                <td>
                                    <asp:Label ID="部门代号Label" runat="server" Text='<%# Eval("部门代号") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="部门名称Label" runat="server" Text='<%# Eval("部门名称") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="部门主管Label" runat="server" Text='<%# Eval("部门主管") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <br />
                    <div style="font-size:20px">
                        Copyright@17网络工程35谢汝森版权所有</div>
                    <br /> <br /> </div> 
                <br />
            </asp:Panel>
    </form>
</body>
</html>
