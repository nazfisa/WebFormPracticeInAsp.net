<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ItemSummary.aspx.cs" Inherits="StockManagement.UI.ItemSummary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="CompanyLabel" runat="server" Text="Company"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="CompanyDropDownList" runat="server">
            </asp:DropDownList>
            <br />
            <asp:Label ID="CategoryLabel" runat="server" Text="Category"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="CategoryDropDownList" runat="server">
            </asp:DropDownList>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="SearchButton" runat="server" OnClick="SearchButton_Click" Text="Search" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
        <asp:GridView ID="ItemSummaryGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <Columns>

                    <asp:TemplateField>
                                    <HeaderTemplate>Serial No.</HeaderTemplate>
                                    <ItemTemplate>
                                        <%#Container.DataItemIndex+1 %>
                                    </ItemTemplate>
                     </asp:TemplateField>

                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:HyperLink runat="server" Text='<% #Eval("ItemName")%>' ></asp:HyperLink>
                            
                             <asp:HiddenField ID="idHiddenField" runat="server" Value='<%#Eval("Id")%>' />

                        </ItemTemplate>
                    </asp:TemplateField>
                 <asp:TemplateField HeaderText="Available Quantity">
                        <ItemTemplate>
                            <asp:HyperLink runat="server" Text='<% #Eval("AvailableQuantity")%>' ></asp:HyperLink>
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
    </form>
</body>
</html>
