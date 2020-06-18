<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bianjiyuangong.aspx.cs" Inherits="shfinal.bianjiyuangong" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 476px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" BorderStyle="Ridge" Width="1024px" style="background-image:url(image/back1.jpg)" Height="658px" Direction="LeftToRight"  >
       
                    <asp:Button ID="Button1" runat="server" BackColor="#66FF33" BorderColor="#66FF33" BorderStyle="Solid" OnClick="Button1_Click" style="height: 35px" Text="返回管理人主页" />
                    
            <div style="text-align:center;font-size:40px;font-weight:bold;color:#ff0000">
                    编辑员工信息<br /></div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Employee]" DeleteCommand="DELETE FROM [Employee] WHERE [人员编号] = @人员编号" InsertCommand="INSERT INTO [Employee] ([人员编号], [密码], [姓名], [联络电话], [是否管理人]) VALUES (@人员编号, @密码, @姓名, @联络电话, @是否管理人)" UpdateCommand="UPDATE [Employee] SET [密码] = @密码, [姓名] = @姓名, [联络电话] = @联络电话, [是否管理人] = @是否管理人 WHERE [人员编号] = @人员编号">
                        <DeleteParameters>
                            <asp:Parameter Name="人员编号" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="人员编号" Type="String" />
                            <asp:Parameter Name="密码" Type="String" />
                            <asp:Parameter Name="姓名" Type="String" />
                            <asp:Parameter Name="联络电话" Type="String" />
                            <asp:Parameter Name="是否管理人" Type="Boolean" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="密码" Type="String" />
                            <asp:Parameter Name="姓名" Type="String" />
                            <asp:Parameter Name="联络电话" Type="String" />
                            <asp:Parameter Name="是否管理人" Type="Boolean" />
                            <asp:Parameter Name="人员编号" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                <div style="text-align:center;font-size:25px" class="auto-style1"  >
                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="人员编号" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                        <AlternatingItemTemplate>
                            <tr style="background-color: #FAFAD2;color: #284775;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                                </td>
                                <td>
                                    <asp:Label ID="人员编号Label" runat="server" Text='<%# Eval("人员编号") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="密码Label" runat="server" Text='<%# Eval("密码") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="姓名Label" runat="server" Text='<%# Eval("姓名") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="联络电话Label" runat="server" Text='<%# Eval("联络电话") %>' />
                                </td>
                                <td>
                                    <asp:CheckBox ID="是否管理人CheckBox" runat="server" Checked='<%# Eval("是否管理人") %>' Enabled="false" />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="background-color: #FFCC66;color: #000080;">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                                </td>
                                <td>
                                    <asp:Label ID="人员编号Label1" runat="server" Text='<%# Eval("人员编号") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="密码TextBox" runat="server" Text='<%# Bind("密码") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="姓名TextBox" runat="server" Text='<%# Bind("姓名") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="联络电话TextBox" runat="server" Text='<%# Bind("联络电话") %>' />
                                </td>
                                <td>
                                    <asp:CheckBox ID="是否管理人CheckBox" runat="server" Checked='<%# Bind("是否管理人") %>' />
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
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
                                    <asp:TextBox ID="人员编号TextBox" runat="server" Text='<%# Bind("人员编号") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="密码TextBox" runat="server" Text='<%# Bind("密码") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="姓名TextBox" runat="server" Text='<%# Bind("姓名") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="联络电话TextBox" runat="server" Text='<%# Bind("联络电话") %>' />
                                </td>
                                <td>
                                    <asp:CheckBox ID="是否管理人CheckBox" runat="server" Checked='<%# Bind("是否管理人") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color: #FFFBD6;color: #333333;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                                </td>
                                <td>
                                    <asp:Label ID="人员编号Label" runat="server" Text='<%# Eval("人员编号") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="密码Label" runat="server" Text='<%# Eval("密码") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="姓名Label" runat="server" Text='<%# Eval("姓名") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="联络电话Label" runat="server" Text='<%# Eval("联络电话") %>' />
                                </td>
                                <td>
                                    <asp:CheckBox ID="是否管理人CheckBox" runat="server" Checked='<%# Eval("是否管理人") %>' Enabled="false" />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                                <th runat="server"></th>
                                                <th runat="server">人员编号</th>
                                                <th runat="server">密码</th>
                                                <th runat="server">姓名</th>
                                                <th runat="server">联络电话</th>
                                                <th runat="server">是否管理人</th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
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
                            <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                                </td>
                                <td>
                                    <asp:Label ID="人员编号Label" runat="server" Text='<%# Eval("人员编号") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="密码Label" runat="server" Text='<%# Eval("密码") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="姓名Label" runat="server" Text='<%# Eval("姓名") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="联络电话Label" runat="server" Text='<%# Eval("联络电话") %>' />
                                </td>
                                <td>
                                    <asp:CheckBox ID="是否管理人CheckBox" runat="server" Checked='<%# Eval("是否管理人") %>' Enabled="false" />
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
