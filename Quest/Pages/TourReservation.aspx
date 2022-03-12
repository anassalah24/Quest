<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="TourReservation.aspx.cs" Inherits="Quest.Pages.TourReservation" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 20%;
            height: 59px;
        }
        .auto-style2 {
            height: 59px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
    <tr>
        <td style="width: 20%">&nbsp;</td>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Company"></asp:Label>
        </td>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Government"></asp:Label>
        </td>
        <td style="width: 20%">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1"></td>
        <td class="auto-style2">
            <asp:DropDownList ID="DDLComp" runat="server" DataSourceID="SqlDataSource2" DataTextField="CompName" DataValueField="tourCompID" Width="80%" AutoPostBack="True" Font-Size="Medium">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuestConnectionString %>" SelectCommand="SELECT [tourCompID], [CompName] FROM [TourCompany]"></asp:SqlDataSource>
        </td>
        <td class="auto-style2">
            <asp:DropDownList ID="DDLGov" runat="server" DataSourceID="SqlDataSource1" DataTextField="GovName" DataValueField="GovermentID" Width="80%" AutoPostBack="True" Font-Size="Medium">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuestConnectionString %>" SelectCommand="SELECT GovermentID, GovName FROM Governments UNION SELECT 0 AS GovermentID, '&lt;Select&gt;' AS GovName
order by GovermentID"></asp:SqlDataSource>
            
        </td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td style="width: 20%">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td style="width: 20%">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="80%" OnRowCommand="GridView1_RowCommand" DataKeyNames="OfferID">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                     <asp:ButtonField ButtonType="Button" CommandName="Slct" HeaderText="Reserve" Text="Reserve" />                       
                    <asp:BoundField DataField="PlaceDescr" HeaderText="PlaceDescr" SortExpression="PlaceDescr" />
                    <asp:BoundField DataField="offerDescr" HeaderText="offerDescr" SortExpression="offerDescr" />
                    <asp:BoundField DataField="CompName" HeaderText="CompName" SortExpression="CompName" />
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QuestConnectionString %>" SelectCommand="SELECT tourOffer.PlaceDescr, tourOffer.offerDescr, TourCompany.CompName, Governments.GovName, tourOffer.OfferID FROM tourOffer LEFT OUTER JOIN Governments ON tourOffer.GovernID = Governments.GovermentID LEFT OUTER JOIN TourCompany ON tourOffer.CompanyID = TourCompany.tourCompID WHERE (tourOffer.CompanyID = @CompID) AND (tourOffer.GovernID = @GovID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DDLComp" Name="CompID" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="DDLGov" Name="GovID" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </td>
    </tr>

           <tr>
            <td colspan="5" style="text-align: center">
              
                <asp:Panel ID="Panel2" runat="server" Visible="False">
                    <table style="width:100%;">
                        <tr>
                            <td style="width: 20%">&nbsp;</td>
                            <td style="width: 30%">
                                <asp:Label ID="LblFrom" runat="server" Text="Day From"></asp:Label>
                            </td>
                            <td style="width: 30%">
                                <asp:Label ID="LblTo" runat="server" Text="Day To"></asp:Label>
                            </td>
                            <td style="width: 20%">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 20%">&nbsp;</td>
                            <td style="width: 30%">
                                <asp:TextBox ID="TxtDayFrom" runat="server"></asp:TextBox>
                                <cc1:calendarextender ID="TxtFrom_CalendarExtender" runat="server" Enabled="True" Format="dd/MM/yyyy" TargetControlID="TxtDayFrom">
                </cc1:CalendarExtender>
                               
                            </td>
                            <td style="width: 30%">
                                <asp:TextBox ID="TxtDayTo" runat="server"></asp:TextBox>
                                 <cc1:calendarextender ID="TxtTo_CalendarExtender" runat="server" Enabled="True" Format="dd/MM/yyyy" TargetControlID="TxtDayTo">
                </cc1:CalendarExtender>
                            </td>
                            <td style="width: 20%">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 20%">&nbsp;</td>
                            <td style="width: 30%">&nbsp;</td>
                            <td style="width: 30%">&nbsp;</td>
                            <td style="width: 20%">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 20%">&nbsp;</td>
                            <td colspan="2">
                                <asp:Button ID="BtnReserve" runat="server" OnClick="BtnReserve_Click" Text="Confirm" Width="136px" />
                                <br />
                            </td>
                            <td style="width: 20%">&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
           <tr>
            <td colspan="5" style="text-align: center">

                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Vertical" Width="95%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="GovName" HeaderText="GovName" SortExpression="GovName" />
                        <asp:BoundField DataField="CompName" HeaderText="CompName" SortExpression="CompName" />
                        <asp:BoundField DataField="PlaceDescr" HeaderText="PlaceDescr" SortExpression="PlaceDescr" />
                        <asp:BoundField DataField="offerDescr" HeaderText="offerDescr" SortExpression="offerDescr" />
                        <asp:BoundField DataField="dateFrom" HeaderText="dateFrom" SortExpression="dateFrom" />
                        <asp:BoundField DataField="dateTo" HeaderText="dateTo" SortExpression="dateTo" />
                        <asp:BoundField DataField="numberOfPersons" HeaderText="numberOfPersons" SortExpression="numberOfPersons" />
                        <asp:BoundField DataField="isConfirmend" HeaderText="isConfirmend" SortExpression="isConfirmend" />
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
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:QuestConnectionString %>" SelectCommand="SELECT Governments.GovName, TourCompany.CompName, tourOffer.PlaceDescr, tourOffer.offerDescr, userTourReservation.dateFrom, userTourReservation.dateTo, userTourReservation.numberOfPersons, userTourReservation.isConfirmend FROM userTourReservation LEFT OUTER JOIN tourOffer ON tourOffer.OfferID = userTourReservation.TourID LEFT OUTER JOIN Governments ON Governments.GovermentID = tourOffer.GovernID LEFT OUTER JOIN TourCompany ON tourOffer.CompanyID = TourCompany.tourCompID WHERE (userTourReservation.userID = @UsrID)">
                    <SelectParameters>
                        <asp:SessionParameter Name="UsrID" SessionField="UserID" />
                    </SelectParameters>
                </asp:SqlDataSource>

                </td>
               </tr>
      

    <tr>
        <td style="width: 20%">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td style="width: 20%">&nbsp;</td>
    </tr>
</table>

</asp:Content>
