<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="entertanmentGovPlaces.aspx.cs" Inherits="Quest.Pages.entertanmentGovPlaces" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td style="width: 20%">&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Entertanment type"></asp:Label>
            </td>
            <td>
               
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Government"></asp:Label>
              
            </td>
            <td style="width: 20%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20%">&nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuestConnectionString %>" SelectCommand="SELECT [entertainmentTypeID], [typeDescr] FROM [entertainType]"></asp:SqlDataSource>
                <asp:DropDownList ID="DDLType" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="typeDescr" DataValueField="entertainmentTypeID" Font-Bold="True" Font-Size="Large" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="400px" ForeColor="Black">
                </asp:DropDownList>
            </td>
            <td>
            <asp:DropDownList ID="DDLGov" runat="server" DataSourceID="SqlDataSource3" DataTextField="GovName" DataValueField="GovermentID" Width="255px" Font-Bold="True" Font-Size="Large" ForeColor="Black" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QuestConnectionString %>" SelectCommand="SELECT GovermentID, GovName FROM Governments UNION SELECT 0 AS GovermentID, '&lt;Select&gt;' AS GovName
order by GovermentID"></asp:SqlDataSource>
            </td>
            <td style="width: 20%">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                 <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="entertainmentPlaceID" ForeColor="Black" GridLines="Vertical" Width="70%">
                     <AlternatingRowStyle BackColor="White" />
                     <Columns>
                         <asp:BoundField DataField="entertainmentPlaceID" HeaderText="entertainmentPlaceID" InsertVisible="False" ReadOnly="True" SortExpression="entertainmentPlaceID" />
                         <asp:BoundField DataField="entName" HeaderText="entName" SortExpression="entName" />
                         <asp:BoundField DataField="entAddress" HeaderText="entAddress" SortExpression="entAddress" />
                         <asp:BoundField DataField="entDescr" HeaderText="entDescr" SortExpression="entDescr" />
                     </Columns>
                     <FooterStyle BackColor="#CCCC99" />
                     <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                     <RowStyle BackColor="#F7F7DE" />
                     <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                     <SortedAscendingCellStyle BackColor="#FBFBF2" />
                     <SortedAscendingHeaderStyle BackColor="#848384" />
                     <SortedDescendingCellStyle BackColor="#EAEAD3" />
                     <SortedDescendingHeaderStyle BackColor="#575357" />
                 </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuestConnectionString %>" SelectCommand="SELECT entertainmentPlaceID, entName, entAddress, entDescr FROM entertainmentPlace WHERE (GovermentID = @GovermentID) AND (entTypeID = @entTypeID)">
    <SelectParameters>
        <asp:ControlParameter ControlID="DDLGov" Name="GovermentID" PropertyName="SelectedValue" Type="Decimal" />
        <asp:ControlParameter ControlID="DDLType" Name="entTypeID" PropertyName="SelectedValue" Type="Decimal" />
    </SelectParameters>
</asp:SqlDataSource>
            </td>
            
        </tr>
    </table>
   
</asp:Content>
