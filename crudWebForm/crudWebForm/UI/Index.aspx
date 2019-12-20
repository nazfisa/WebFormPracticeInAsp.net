<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="crudWebForm.UI.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="CreateId" runat="server" NavigateUrl="~/UI/Student.aspx">Create</asp:HyperLink>

            <asp:HyperLink ID="DetailsId" runat="server" NavigateUrl="~/UI/DetailsUI.aspx">Details</asp:HyperLink>


        </div>
    </form>
</body>
</html>
