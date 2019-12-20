<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CategoryEntryUI.aspx.cs" Inherits="StockManagement.UI.CategoryEntryUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="CategoryNameLabel" runat="server" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="CategoryNameTextBox" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="SaveButton" runat="server" OnClick="SaveButton_Click" Text="Save" />
        <asp:Label ID="DisplayLabel" runat="server"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="CategoryDisplayGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
             <Columns>

                    <asp:TemplateField>
                                    <HeaderTemplate>Serial No.</HeaderTemplate>
                                    <ItemTemplate>
                                        <%#Container.DataItemIndex+1 %>
                                    </ItemTemplate>
                     </asp:TemplateField>

                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:HyperLink runat="server" Text='<% #Eval("Category")%>' ></asp:HyperLink>
                            
                             <asp:HiddenField ID="idHiddenField" runat="server" Value='<%#Eval("Id")%>' />

                        </ItemTemplate>
                    </asp:TemplateField>
                 <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:LinkButton runat="server" OnClick="UpdateButton_Click">Update</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>


                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />

        </asp:GridView>
        <asp:Button ID="BackToIndexButton" runat="server" OnClick="BackToIndexButton_Click" Text="Back To Index" />
        <br />
    </form>
</body>
</html>
