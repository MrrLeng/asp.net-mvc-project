<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="AddNewPro.aspx.cs" Inherits="AddNewPro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
        <h2 style="color:blueviolet">Add New Flower Form</h2>
       <div class="Frm1">
         <asp:Label CssClass="lbl" ID="Label1" runat="server" Text="Flower ID " />
        <asp:TextBox CssClass="txt" runat="server" ID="txtId"></asp:TextBox>
        <br />
        <asp:Label CssClass="lbl" Text="Flower Name" ID="Label2" runat="server" />
        <asp:TextBox CssClass="txt" runat="server" ID="txtName"></asp:TextBox>
        <br />
        <asp:Label CssClass="lbl" Text="Flower Type" ID="Label3" runat="server" />
        <asp:DropDownList CssClass="txt" ID="drpType" runat="server" DataSourceID="SqlDataSource1" DataTextField="FlowerType" DataValueField="FlowerTypeId"></asp:DropDownList>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FlowerDBTestConnectionString %>" SelectCommand="SELECT * FROM [TblFlowerTypes]"></asp:SqlDataSource>
        <br />
        <asp:Label CssClass="lbl" Text="Flower Price" ID="Label5" runat="server" />
        <asp:TextBox CssClass="txt" runat="server" ID="txtPrice"></asp:TextBox>
        <br />
        <asp:Label CssClass="lbl" Text="Choose a Picture" ID="Label6" runat="server" />
        <asp:FileUpload CssClass="txt" runat="server" ID="imgUp" />
        <br />
        <asp:Label CssClass="lbl" Text="Flower Description" ID="Label4" runat="server" />
        <br />
        <asp:TextBox CssClass="txtA" TextMode="MultiLine" runat="server" ID="FlDes" Columns="50" Rows="5"></asp:TextBox>
        <br />
        <div class="cmdCl">
        <asp:Button runat="server" ID="cmdAdd" Text="Add New" Font-Bold="True" Font-Size="Larger" ForeColor="#CC3300" OnClick="cmdAdd_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button runat="server" ID="cmdCancel" Text="Cancel" Font-Bold="True" Font-Size="Larger" ForeColor="#CC3300" />
        </div>
    </div>
</asp:Content>

