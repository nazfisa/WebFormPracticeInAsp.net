<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StockOutEntryUI.aspx.cs" Inherits="StockManagement.StockOutEntryUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="idHiddenField" runat="server"/>
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
            <asp:Label ID="StockInQuantityLabel" runat="server" Text="Stock Out Quantity"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="StockOutQuantityTextBox" runat="server"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="SaveButton" runat="server" OnClick="SaveButton_Click" Text="Save" />
            <asp:Label ID="displayLabel" runat="server"></asp:Label>
        </div>
        <asp:GridView ID="StockOutGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
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
                 <asp:TemplateField HeaderText="AvailableQuantity">
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
