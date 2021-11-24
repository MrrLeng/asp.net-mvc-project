<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="administrator.aspx.cs" Inherits="administrator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
<h1>What do you want to do?</h1>
    <asp:HyperLink runat="server" NavigateUrl="~/AddNewPro.aspx">
        <h2>Add New Flowers</h2>
    </asp:HyperLink>
    <asp:HyperLink runat="server" NavigateUrl="~/EditPro.aspx">
        <h2>Edit Flower Information</h2>
    </asp:HyperLink>
    <asp:HyperLink runat="server" NavigateUrl="~/EditProImg.aspx">
        <h2>Edit Flower Image</h2>
    </asp:HyperLink>
</asp:Content>

