<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndextUI.aspx.cs" Inherits="StockManagement.UI.IndextUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UI/CategoryEntryUI.aspx">Category</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/UI/CompanyEntryUI.aspx">Company</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="ItemSetupHyperLink" runat="server" NavigateUrl="~/UI/ItemEntryUI.aspx">Item Entry</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/UI/StockInEntry.aspx">Item Setup</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/UI/StockOutEntryUI.aspx">Stock Out</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/UI/ItemSummary.aspx">Search</asp:HyperLink>
        </div>
    </form>
</body>
</html>
