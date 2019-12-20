<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyEntryUI.aspx.cs" Inherits="StockManagement.UI.CompanyEntryUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="CompanyNameLabel" runat="server" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="CompanyNameTextBox" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            <asp:Button ID="SaveButton" runat="server" Text="Save" OnClick="SaveButton_Click" />
            <asp:Label ID="CompanyDisplayLabel" runat="server"></asp:Label>
        </div>
        <asp:GridView ID="CompanyGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <Columns>

                    <asp:TemplateField>
                                    <HeaderTemplate>Serial No.</HeaderTemplate>
                                    <ItemTemplate>
                                        <%#Container.DataItemIndex+1 %>
                                    </ItemTemplate>
                     </asp:TemplateField>

                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:HyperLink runat="server" Text='<% #Eval("CompanyName")%>' ></asp:HyperLink>
                            
                             <asp:HiddenField ID="idHiddenField" runat="server" Value='<%#Eval("Id")%>' />

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
        <asp:Button ID="BackToIndex" runat="server" Text="Back To Index" OnClick="BackToIndexButton"/>
    </form>
</body>
</html>
