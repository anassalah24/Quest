<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site2.Master" AutoEventWireup="true" CodeBehind="AdminShowCarReservation.aspx.cs" Inherits="Quest.Pages.AdminShowCarReservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="userCarReservationID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnRowCommand="GridView1_RowCommand" Width="95%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                         <asp:ButtonField ButtonType="Button" CommandName="Slct" HeaderText="COnfirm" Text="COnfirm" />
                       
                        <asp:BoundField DataField="userCarReservationID" HeaderText="userCarReservationID" InsertVisible="False" ReadOnly="True" SortExpression="userCarReservationID" />
                        <asp:BoundField DataField="datefrom" HeaderText="datefrom" SortExpression="datefrom" />
                        <asp:BoundField DataField="dateto" HeaderText="dateto" SortExpression="dateto" />
                        <asp:BoundField DataField="companyName" HeaderText="companyName" SortExpression="companyName" />
                        <asp:BoundField DataField="CarModel" HeaderText="CarModel" SortExpression="CarModel" />
                        <asp:BoundField DataField="priceperday" HeaderText="priceperday" SortExpression="priceperday" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuestConnectionString %>" SelectCommand="SELECT userCarReservation.userCarReservationID, userCarReservation.datefrom, userCarReservation.dateto, caroffer.companyName, caroffer.CarModel, caroffer.priceperday, SystemUser.UserName FROM userCarReservation LEFT OUTER JOIN SystemUser ON userCarReservation.userID = SystemUser.UserID LEFT OUTER JOIN caroffer ON userCarReservation.carofferID = caroffer.carofferID WHERE (userCarReservation.isConfirmed = 0)"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
