<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="EditPro.aspx.cs" Inherits="EditPro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
        <h2 style="color:blueviolet">Edit Flower Form</h2>
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
        <asp:Label CssClass="lbl" Text="Flower Description" ID="Label4" runat="server" />
        <br />
        <asp:TextBox CssClass="txtA" TextMode="MultiLine" runat="server" ID="FlDes" Columns="50" Rows="5"></asp:TextBox>
        <br />
        <div class="cmdCl">
        <asp:Button runat="server" ID="cmdUpdate" Text="Update" Font-Bold="True" Font-Size="Larger" ForeColor="#CC3300" OnClick="cmdUpdate_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button runat="server" ID="cmdDelete" Text="Delete" Font-Bold="True" Font-Size="Larger" ForeColor="#CC3300" OnClick="cmdDelete_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button runat="server" ID="cmdCancel" Text="Cancel" Font-Bold="True" Font-Size="Larger" ForeColor="#CC3300" OnClick="cmdCancel_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button runat="server" ID="cmdSearch" Text="Search" Font-Bold="True" Font-Size="Larger" ForeColor="#CC3300" OnClick="cmdSearch_Click" />
        </div>
    </div>
</asp:Content>

