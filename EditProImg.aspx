<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="EditProImg.aspx.cs" Inherits="EditProImg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
        <h2 style="color:blueviolet">Edit Flower Image</h2>
       <div class="Frm1">
         <asp:Label CssClass="lbl" ID="Label1" runat="server" Text="Flower ID " />
        <asp:TextBox CssClass="txt" runat="server" ID="txtId"></asp:TextBox>
        <br /><br /><center>
        <asp:Image ID="SImgUrl" ImageAlign="Middle" Width="350px" runat="server"/>
        </center><br /><br />
        <asp:FileUpload CssClass="txt" runat="server" ID="imgUp" />
        <br /><br />
        <div class="cmdCl">
        <asp:Button runat="server" ID="cmdUpdate" Text="Update" Font-Bold="True" Font-Size="Larger" ForeColor="#CC3300" OnClick="cmdUpdate_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button runat="server" ID="cmdCancel" Text="Cancel" Font-Bold="True" Font-Size="Larger" ForeColor="#CC3300" OnClick="cmdCancel_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button runat="server" ID="cmdSearch" Text="Search" Font-Bold="True" Font-Size="Larger" ForeColor="#CC3300" OnClick="cmdSearch_Click" />
        </div>
    </div>
</asp:Content>

