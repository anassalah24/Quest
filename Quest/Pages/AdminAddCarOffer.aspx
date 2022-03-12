<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site2.Master" AutoEventWireup="true" CodeBehind="AdminAddCarOffer.aspx.cs" Inherits="Quest.Pages.AdminAddCarOffer" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
            <td  >&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">
                <asp:Label ID="Label1" runat="server" Text="company Name"></asp:Label>
            </td>
            <td style="width: 15%">
                <asp:TextBox ID="TxtName" runat="server" Width="80%"></asp:TextBox>
            </td>
            <td style="width: 15%">
                <asp:Label ID="Label2" runat="server" Text="Company Contact Info"></asp:Label>
            </td>
            <td style="width: 15%">
                <asp:TextBox ID="TxtContact" runat="server" Height="101px" TextMode="MultiLine" Width="80%"></asp:TextBox>
            </td>
            <td  >&nbsp;</td>
            
        </tr>
        <tr>
            <td  >
                <asp:Label ID="Label3" runat="server" Text="Car Mark"></asp:Label>
            </td>
            <td  >
                <asp:TextBox ID="TxtMark" runat="server" Width="80%"></asp:TextBox>
            </td>
            <td  >
                <asp:Label ID="Label4" runat="server" Text="Car Model"></asp:Label>
            </td>
            <td  >
                <asp:TextBox ID="TxtModel" runat="server" Width="80%"></asp:TextBox>
            </td>
            <td  >
                <asp:Label ID="Label5" runat="server" Text="Price Per Day"></asp:Label>
            </td>
            <td  >
                <asp:TextBox ID="TxtPrice" runat="server" Width="80%"></asp:TextBox>
                 <cc1:FilteredTextBoxExtender ID="TxtService_FilteredTextBoxExtender" runat="server" Enabled="True" TargetControlID="TxtPrice" ValidChars="0123456789.">
                        </cc1:FilteredTextBoxExtender>
               
            </td>
        </tr>
        <tr>
            <td style="text-align: center;" colspan="6">
                <asp:Button ID="BtnSave" runat="server" Height="32px" OnClick="BtnSave_Click" Text="Save" Width="163px" />
                <br />
            </td>
        </tr>
        <tr>
            <td style="text-align: center;" colspan="6">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="carofferID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="95%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="carofferID" HeaderText="carofferID" InsertVisible="False" ReadOnly="True" SortExpression="carofferID" />
                        <asp:BoundField DataField="companyName" HeaderText="companyName" SortExpression="companyName" />
                        <asp:BoundField DataField="CarModel" HeaderText="CarModel" SortExpression="CarModel" />
                        <asp:BoundField DataField="CarMark" HeaderText="CarMark" SortExpression="CarMark" />
                        <asp:BoundField DataField="priceperday" HeaderText="priceperday" SortExpression="priceperday" />
                        <asp:BoundField DataField="contactCompany" HeaderText="contactCompany" SortExpression="contactCompany" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuestConnectionString %>" SelectCommand="SELECT [carofferID], [companyName], [CarModel], [CarMark], [priceperday], [contactCompany] FROM [caroffer] ORDER BY [carofferID] DESC"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
            <td  >&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
            <td  >&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
            <td  >&nbsp;</td>
        </tr>
    </table>
</asp:Content>
