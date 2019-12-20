<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ItemEntryUI.aspx.cs" Inherits="StockManagement.UI.ItemEntryUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="CategoryLabel" runat="server" Text="Category"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="CategoryDropDownList" runat="server" Height="19px" Width="120px">
            </asp:DropDownList>
            <br />
            <asp:Label ID="CompanyLabel" runat="server" Text="Company"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="CompanyDropDownList" runat="server" Height="16px" Width="121px">
            </asp:DropDownList>
            <br />
            <asp:Label ID="ItemNameLabel" runat="server" Text="Item Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ItemNameTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="ReorderLabel" runat="server" Text="Reorder Level"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ReorderLevelTextBox" runat="server"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="SaveButton" runat="server" OnClick="SaveButton_Click" Text="Save" />
            <asp:Label ID="displayLabel" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
