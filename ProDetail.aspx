<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="ProDetail.aspx.cs" Inherits="ProDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <div class="Frm2">
 <table>
     <asp:ListView ID="ListView1" runat="server" >
         <ItemTemplate>
             <tr>
           <td id="Td2" runat="server" style="text-align:center; padding:20px;">
           <asp:textbox ID="txtFlId" Visible="false" runat="server" Text='<%# Eval("FlowerId") %>' />
           <br />
          <asp:Image ID="SImgUrl" ImageAlign="Middle" Width="350px" runat="server" ImageUrl='<%# Eval("ImgUrl") %>' />
          <br /><br />
          <asp:Label Font-Size="X-Large" ID="FlowerNameLabel" runat="server" Text='<%# Eval("FlowerName") %>' />
          <br />Price : &nbsp <font color="Red" >$</font>
          <asp:Label ForeColor="Red" Font-Bold="true" ID="FlowerPriceLabel" runat="server" Text='<%# Eval("FlowerPrice") %>' />
          <br /> Type : &nbsp
          <asp:Label ID="Label1" runat="server" Text='<%# Eval("FlowerType") %>' />
          <br /><br /> More Decscription: <br />
          <asp:Label Width="300px" ID="Label2" runat="server" Text='<%# Eval("FlowerDes") %>' />
          <br /><br /><u> Note </u> <br />
          <asp:TextBox ForeColor="#996633" runat="server" Columns="75" Rows="8" TextMode="MultiLine">
           Based on availability, some colors, flowers and 
           containers may not be available at the time of your 
           order. If a substitution is necessary our floral designers 
           will contact you. Any substitution will be of equal or 
           greater value.
          </asp:TextBox>
              

          </td>
           </tr>
          </ItemTemplate>
 
        </asp:ListView>
 </table>
            </div>
</asp:Content>

