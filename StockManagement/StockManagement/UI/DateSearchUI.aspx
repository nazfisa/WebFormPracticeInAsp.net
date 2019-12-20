<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DateSearchUI.aspx.cs" Inherits="StockManagement.UI.DateSearchUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="FromDateLabel" runat="server" Text="From Date"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="FromDateTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="ToDateLabel" runat="server" Text="To Date"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ToDateTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="SearchButton" runat="server" Text="Search" />
        </div>
    </form>
</body>
</html>
