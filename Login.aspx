<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
<center>
    <asp:Login ID="Login1" runat="server" 
        BackColor="#F7F7DE" BorderColor="#CCCC99" 
        BorderStyle="Solid" BorderWidth="1px" 
        Font-Names="Verdana" Font-Size="Larger" 
        Width="440px" Height="220px">
        <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
    </asp:Login>
    <br /><br />
    If you don't have account, <br />
    Please 
    <asp:HyperLink runat="server" NavigateUrl="~/SignUp.aspx">
        Sign Up New Account
    </asp:HyperLink> Now!!!
    <br /><br />
    Or 
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" MailDefinition-From="snoeun168@gmail.com" MailDefinition-Subject="Change Your Password">
    </asp:PasswordRecovery>
</center>
</asp:Content>

