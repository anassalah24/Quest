<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site2.Master" AutoEventWireup="true" CodeBehind="AdminAddEntertainment.aspx.cs" Inherits="Quest.Pages.AdminAddEntertainment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 15%;
            height: 109px;
        }
        .auto-style2 {
            height: 109px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">
                &nbsp;</td>
            <td style="width: 15%">
                &nbsp;</td>
             <td style="width: 15%">
                 <br />
            </td>
            <td style="width: 15%">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">
                <asp:Label ID="Label1" runat="server" Text="Type"></asp:Label>
            </td>
            <td style="width: 15%">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuestConnectionString %>" SelectCommand="SELECT [entertainmentTypeID], [typeDescr] FROM [entertainType]"></asp:SqlDataSource>
                <asp:DropDownList ID="DDLType" runat="server" DataSourceID="SqlDataSource2" DataTextField="typeDescr" DataValueField="entertainmentTypeID" Font-Bold="True" Font-Size="Large" ForeColor="Black"  Width="80%" AutoPostBack="True">
                </asp:DropDownList>
            </td>
             <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">
                <asp:Label ID="Label2" runat="server" Text="Government"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DDLGov" runat="server" DataSourceID="SqlDataSource3" DataTextField="GovName" DataValueField="GovermentID" Font-Bold="True" Font-Size="Large" ForeColor="Black" Width="80%" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QuestConnectionString %>" SelectCommand="SELECT GovermentID, GovName FROM Governments 
order by GovermentID"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
            </td>
             <td class="auto-style1">
                 <asp:TextBox ID="TxtAddress" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label5" runat="server" Text="Description"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TxtDescr" runat="server" Height="103px" TextMode="MultiLine" Width="317px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="6" style="text-align: center">
                <asp:Button ID="BtnSave" runat="server" Text="Save" Height="37px" OnClick="BtnSave_Click" Width="144px" />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="6" style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="entertainmentPlaceID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="80%">
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
        <tr>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
             <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
             <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
