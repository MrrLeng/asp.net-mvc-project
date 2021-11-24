<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="Just4u.aspx.cs" Inherits="Just4u" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <div class="Frm2">
         <asp:ListView ID="ListView1" runat="server" DataKeyNames="FlowerId" DataSourceID="SqlDataSource1" GroupItemCount="2" OnItemCommand="ListView1_ItemCommand">
 
             <EmptyDataTemplate>
                 <table id="Table1" runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                     <tr>
                         <td>No data was returned.</td>
                     </tr>
                 </table>
             </EmptyDataTemplate>
             <EmptyItemTemplate>
                <td id="Td1" runat="server" />
             </EmptyItemTemplate>
             <GroupTemplate>
                 <tr id="itemPlaceholderContainer" runat="server">
                     <td id="itemPlaceholder" runat="server"></td>
                 </tr>
             </GroupTemplate>
             <ItemTemplate>
                 <td id="Td2" runat="server" style="width:50%; text-align:center; padding:20px;">
                     <asp:textbox ID="txtFlId" Visible="false" runat="server" Text='<%# Eval("FlowerId") %>' />
                     <br />
                     <asp:Image ID="SImgUrl" ImageAlign="Middle" Width="250px" runat="server" ImageUrl='<%# Eval("ImgUrl") %>' />
                     <br /><br />
                     <asp:Label ID="FlowerNameLabel" runat="server" Text='<%# Eval("FlowerName") %>' />
                     <br />Price : &nbsp <font color="Red" >$</font>
                     <asp:Label ForeColor="Red" Font-Bold="true" ID="FlowerPriceLabel" runat="server" Text='<%# Eval("FlowerPrice") %>' />
                     <br /><br />
                     <asp:LinkButton ID="proDetail" Text="More Detail" runat="server" Font-Bold="false" ForeColor="#009999" Font-Italic="true"></asp:LinkButton>
                 </td>
             </ItemTemplate>
             <LayoutTemplate>
                 <table id="Table2" runat="server">
                     <tr id="Tr1" runat="server">
                         <td id="Td3" runat="server">
                             <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                 <tr id="groupPlaceholder" runat="server">
                                 </tr>
                             </table>
                         </td>
                     </tr>
                     <tr id="Tr2" runat="server">
                         <td id="Td4" runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                             <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                 <Fields>
                                     <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                 </Fields>
                             </asp:DataPager>
                         </td>
                     </tr>
                 </table>
             </LayoutTemplate>

        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FlowerDBTestConnectionString %>" SelectCommand="SELECT * FROM [tblFlowers] WHERE tblFlowers.FlowerTypeId=1"></asp:SqlDataSource>
    </div>
 
</asp:Content>

