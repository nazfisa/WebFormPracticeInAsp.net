<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="crudWebForm.UI.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="DescriptionTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            <asp:Label ID="MessageLabel" runat="server"></asp:Label>
            <br />
        </div>

        
    </form>
</body>
</html>
