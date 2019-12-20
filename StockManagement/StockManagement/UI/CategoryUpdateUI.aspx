<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CategoryUpdateUI.aspx.cs" Inherits="StockManagement.UI.CategoryUpdateUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
            <div>
                
             <asp:HiddenField ID="idHiddenField" runat="server"/>
            <asp:Label ID="CategoryNameLabel" runat="server" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="CategoryNameTextBox" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="UpdateButton" runat="server" Text="Update" OnClick="updateButton_Click" />
       
    </form>
</body>
</html>
