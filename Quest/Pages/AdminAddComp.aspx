<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site2.Master" AutoEventWireup="true" CodeBehind="AdminAddComp.aspx.cs" Inherits="Quest.Pages.AdminAddComp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="width: 10%">&nbsp;</td>
            <td style="width: 35%">&nbsp;</td>
            <td style="width: 10%">&nbsp;</td>
            <td style="width: 35%">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 10%">
                <asp:Label ID="Label1" runat="server" Text="Company"></asp:Label>
            </td>
            <td style="width: 35%">
                <asp:TextBox ID="TxtName" runat="server" Width="80%"></asp:TextBox>
            </td>
            <td style="width: 10%">
                <asp:Label ID="Label2" runat="server" Text="Contact Info"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtContact" runat="server" Height="94px" TextMode="MultiLine" Width="80%"></asp:TextBox>
                <br />
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" Height="36px" Width="111px" />
            </td>
        </tr>
        <tr>
            <td colspan="5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="tourCompID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="95%" OnRowCommand="GridView1_RowCommand">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                         <asp:ButtonField ButtonType="Button" CommandName="Slct" HeaderText="Add Offer" Text="Add Offer" />
                       
                        <asp:BoundField DataField="tourCompID" HeaderText="tourCompID" InsertVisible="False" ReadOnly="True" SortExpression="tourCompID" />
                        <asp:BoundField DataField="CompName" HeaderText="CompName" SortExpression="CompName" />
                        <asp:BoundField DataField="ContactInfo" HeaderText="ContactInfo" SortExpression="ContactInfo" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuestConnectionString %>" SelectCommand="SELECT [tourCompID], [CompName], [ContactInfo] FROM [TourCompany] ORDER BY [tourCompID] DESC"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="5">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                
                    <table style="width:100%;">
                        <tr>
            <td style="width: 15%">
                <asp:Label ID="Label3" runat="server" Text="Place"></asp:Label>
            </td>
            <td style="width: 35%">
                <asp:TextBox ID="TxtPlace" runat="server" Width="70%"></asp:TextBox>
            </td>
            <td style="width: 15%">
                <asp:Label ID="Label4" runat="server" Text="Description"></asp:Label>
            </td>
            <td style="width: 35%">
                <asp:TextBox ID="TxtDesc" runat="server" Height="75px" TextMode="MultiLine" Width="70%"></asp:TextBox>
            </td>
        </tr>
                         <tr>
            <td style="width: 15%">
                <asp:Label ID="Label7" runat="server" Text="Government"></asp:Label>
            </td>
            <td style="width: 35%">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="70%" DataSourceID="SqlDataSource3" DataTextField="GovName" DataValueField="GovermentID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QuestConnectionString %>" SelectCommand="SELECT [GovermentID], [GovName] FROM [Governments]"></asp:SqlDataSource>
            </td>
            <td style="width: 15%">
                <asp:Button ID="BtnOffer" runat="server" Text="Add Offer" Height="36px" OnClick="BtnOffer_Click" Width="153px" />
                             <br />
                             </td>
            <td style="width: 35%">
                &nbsp;</td>
        </tr>
                         <tr>
            <td colspan="4">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="OfferID" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" Width="95%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="OfferID" HeaderText="OfferID" InsertVisible="False" ReadOnly="True" SortExpression="OfferID" Visible="False" />
                        <asp:BoundField DataField="PlaceDescr" HeaderText="PlaceDescr" SortExpression="PlaceDescr" />
                        <asp:BoundField DataField="offerDescr" HeaderText="offerDescr" SortExpression="offerDescr" />
                        <asp:BoundField DataField="GovName" HeaderText="GovName" SortExpression="GovName" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuestConnectionString %>" SelectCommand="SELECT tourOffer.OfferID, tourOffer.PlaceDescr, tourOffer.offerDescr, tourOffer.GovernID, Governments.GovName FROM tourOffer INNER JOIN Governments ON tourOffer.GovernID = Governments.GovermentID WHERE (tourOffer.CompanyID = @CompID)">
                    <SelectParameters>
                        <asp:SessionParameter Name="CompID" SessionField="CompID" />
                    </SelectParameters>
                </asp:SqlDataSource>
                             </td>
        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td colspan="5">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
