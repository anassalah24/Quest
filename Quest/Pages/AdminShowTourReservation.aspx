<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site2.Master" AutoEventWireup="true" CodeBehind="AdminShowTourReservation.aspx.cs" Inherits="Quest.Pages.AdminShowTourReservation" %>
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
            <td colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="userTourReservationID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnPageIndexChanging="GridView1_PageIndexChanging" Width="90%" OnRowCommand="GridView1_RowCommand">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                         <asp:ButtonField ButtonType="Button" CommandName="Slct" HeaderText= "Confirm Reservation" Text="Confirm" />
                       
                        <asp:BoundField DataField="userTourReservationID" HeaderText="userTourReservationID" InsertVisible="False" ReadOnly="True" SortExpression="userTourReservationID" />
                        <asp:BoundField DataField="dateFrom" HeaderText="dateFrom" SortExpression="dateFrom" />
                        <asp:BoundField DataField="dateTo" HeaderText="dateTo" SortExpression="dateTo" />
                        <asp:BoundField DataField="numberOfPersons" HeaderText="numberOfPersons" SortExpression="numberOfPersons" />
                        <asp:BoundField DataField="isConfirmend" HeaderText="isConfirmend" SortExpression="isConfirmend" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                        <asp:BoundField DataField="CompName" HeaderText="CompName" SortExpression="CompName" />
                        <asp:BoundField DataField="PlaceDescr" HeaderText="PlaceDescr" SortExpression="PlaceDescr" />
                        <asp:BoundField DataField="offerDescr" HeaderText="offerDescr" SortExpression="offerDescr" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuestConnectionString %>" SelectCommand="SELECT userTourReservation.userTourReservationID, userTourReservation.dateFrom, userTourReservation.dateTo, userTourReservation.numberOfPersons, userTourReservation.isConfirmend, SystemUser.UserName, TourCompany.CompName, tourOffer.PlaceDescr, tourOffer.offerDescr FROM userTourReservation LEFT OUTER JOIN tourOffer ON userTourReservation.TourID = tourOffer.OfferID LEFT OUTER JOIN TourCompany ON tourOffer.CompanyID = TourCompany.tourCompID LEFT OUTER JOIN SystemUser ON userTourReservation.userID = SystemUser.UserID WHERE (userTourReservation.isConfirmend = @isConfirmend)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="0" Name="isConfirmend" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
