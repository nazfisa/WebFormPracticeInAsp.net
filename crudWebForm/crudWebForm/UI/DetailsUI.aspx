<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailsUI.aspx.cs" Inherits="crudWebForm.UI.DetailsUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="studentListGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="studentListGridView_SelectedIndexChanged">

                <AlternatingRowStyle BackColor="White" />

                <Columns>
                    
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<% #Eval("Name")%>'></asp:Label>
                            <asp:HiddenField ID="idHiddenField" runat="server" Value='<% #Eval("Id")%>'/>
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Description">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<% #Eval("Description")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:LinkButton  runat="server" OnClick="LinkButton_Click">Update</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:LinkButton  runat="server" OnClick="DeleteButton_Click">Delete</asp:LinkButton>
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

        </div>
        <asp:Label ID="MessageLabel" runat="server"></asp:Label>
    </form>
</body>
</html>
