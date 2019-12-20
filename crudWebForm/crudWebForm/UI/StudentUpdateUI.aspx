<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentUpdateUI.aspx.cs" Inherits="crudWebForm.UI.StudentUpdateUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                

                <tr>
                    <asp:HiddenField ID="idHiddenField" runat="server"/>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="DescriptionTextBox" runat="server" ></asp:TextBox></td>
                </tr>


                <tr>
                    <td>
                        <asp:Button ID="updateButton" runat="server" Text="Update" OnClick="updateButton_Click"  /></td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>



        </div>

    </form>
</body>
</html>

