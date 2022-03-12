<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="CarReservation.aspx.cs" Inherits="Quest.Pages.CarReservation" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table style="width: 100%;">
        <tr>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 20%">
                <asp:Label ID="Label1" runat="server" Text="Company"></asp:Label>
            </td>
            <td style="width: 20%">
                <asp:Label ID="Label2" runat="server" Text="Car Mark"></asp:Label>
            </td>
            <td style="width: 20%">
                <asp:Label ID="Label3" runat="server" Text="Price Per Day less than"></asp:Label>
            </td>
            <td style="width: 20%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 20%">
                <asp:DropDownList ID="DDLComp" runat="server" DataSourceID="SqlDataSource1" DataTextField="Comp" DataValueField="Comp" Width="70%">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuestConnectionString %>" SelectCommand="SELECT distinct [companyName] as Comp FROM [caroffer]"></asp:SqlDataSource>
            </td>
            <td style="width: 20%">
                <asp:DropDownList ID="DDLMark" runat="server" DataSourceID="SqlDataSource2" DataTextField="CarMark" DataValueField="CarMark" Width="70%">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuestConnectionString %>" SelectCommand="SELECT [CarMark] FROM [caroffer]"></asp:SqlDataSource>
            </td>
            <td style="width: 20%">
                <asp:TextBox ID="TxtPrice" runat="server" Width="70%">0</asp:TextBox>
            </td>
            <td style="width: 20%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 20%">
                <asp:Button ID="BtnSearch" runat="server" Text="Search" Width="180px" OnClick="BtnSearch_Click" />
                <br />
                <br />
            </td>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="5" style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="carofferID" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="80%" OnRowCommand="GridView1_RowCommand">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:ButtonField ButtonType="Button" CommandName="Slct" HeaderText="Reserve" Text="Reserve" />
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
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QuestConnectionString %>" SelectCommand="SELECT [carofferID], [companyName], [CarModel], [CarMark], [priceperday], [contactCompany] FROM [caroffer]"></asp:SqlDataSource>
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
                                <cc1:CalendarExtender ID="TxtFrom_CalendarExtender" runat="server" Enabled="True" Format="dd/MM/yyyy" TargetControlID="TxtDayFrom">
                </cc1:CalendarExtender>
                               
                            </td>
                            <td style="width: 30%">
                                <asp:TextBox ID="TxtDayTo" runat="server"></asp:TextBox>
                                 <cc1:CalendarExtender ID="TxtTo_CalendarExtender" runat="server" Enabled="True" Format="dd/MM/yyyy" TargetControlID="TxtDayTo">
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
                            </td>
                            <td style="width: 20%">&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
           <tr>
            <td colspan="5" style="text-align: center">

                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="userCarReservationID" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Vertical" Width="95%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="userCarReservationID" HeaderText="userCarReservationID" InsertVisible="False" ReadOnly="True" SortExpression="userCarReservationID" />
                        <asp:BoundField DataField="carofferID" HeaderText="carofferID" SortExpression="carofferID" />
                        <asp:BoundField DataField="datefrom" HeaderText="datefrom" SortExpression="datefrom" />
                        <asp:BoundField DataField="dateto" HeaderText="dateto" SortExpression="dateto" />
                        <asp:BoundField DataField="isConfirmed" HeaderText="isConfirmed" SortExpression="isConfirmed" />
                        <asp:BoundField DataField="companyName" HeaderText="companyName" SortExpression="companyName" />
                        <asp:BoundField DataField="CarModel" HeaderText="CarModel" SortExpression="CarModel" />
                        <asp:BoundField DataField="CarMark" HeaderText="CarMark" SortExpression="CarMark" />
                        <asp:BoundField DataField="priceperday" HeaderText="priceperday" SortExpression="priceperday" />
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
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:QuestConnectionString %>" SelectCommand="SELECT userCarReservation.userCarReservationID, userCarReservation.carofferID, userCarReservation.datefrom, userCarReservation.dateto, userCarReservation.isConfirmed, caroffer.companyName, caroffer.CarModel, caroffer.CarMark, caroffer.priceperday FROM userCarReservation LEFT OUTER JOIN caroffer ON userCarReservation.carofferID = caroffer.carofferID WHERE (userCarReservation.userID = @UsrID)">
                    <SelectParameters>
                        <asp:SessionParameter Name="UsrID" SessionField="UserID" />
                    </SelectParameters>
                </asp:SqlDataSource>

                </td>
               </tr>
        <tr>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
