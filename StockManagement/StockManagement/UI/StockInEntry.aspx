<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StockInEntry.aspx.cs" Inherits="StockManagement.UI.StockInEntry" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="CompanyLabel" runat="server" Text="Company"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="CompanyDropDownList" runat="server" Height="16px" Width="126px">
            </asp:DropDownList>
            
            <br />
            <asp:Label ID="ItemLabel" runat="server" Text="Item"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ItemDropDownList" runat="server" Height="16px" Width="124px">
            </asp:DropDownList>
            <br />
            <asp:Label ID="ReorderLabel" runat="server" Text="Reorder Level"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ReorderTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="AvailableQuantityLabel" runat="server" Text="Available Quantity"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="AvailableQuantityTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="StockInQuantityLabel" runat="server" Text="Stock In Quantity"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="StockInQuantityTextBox" runat="server"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="SaveButton" runat="server" OnClick="SaveButton_Click" Text="Save" />
            <asp:Label ID="displayLabel" runat="server"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
