<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site3.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Quest.Pages.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div id="container" >
        <div id="formcontainer">
         <table style="width: 100%;">
             <tr>
                 <td style="width: 30%">&nbsp;</td>
                 <td>
                     <asp:Panel ID="Panel1" runat="server" Height="900px">
                         <div style="background-image: url('assets/images/bg.jpg'); ">
                          <table style="width: 100%;">
             <tr>
                 <td colspan="2" style="vertical-align: middle; text-align: center">
                     <br />
                     <br />
                     <br />
                 </td>
             </tr>
             <tr>
                 <td colspan="2" style="vertical-align: middle; text-align: center">
                     <asp:Label ID="Label2" runat="server" Text="Registration" Font-Bold="True" Font-Size="Large"></asp:Label>
      
                 </td>
             </tr>
                               <tr>
                 <td colspan="2" style="vertical-align: middle; text-align: center">
                     <asp:Label ID="Label1" runat="server" Text="Email" Font-Bold="True" ForeColor="#9966FF"></asp:Label>
                     <br />
                     <asp:TextBox ID="TxtEmail" runat="server" Width="300px" ></asp:TextBox>
                   </td>
             </tr>
             <tr>
                 <td colspan="2" style="vertical-align: middle; text-align: center">
                     <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#9966FF" Text="User Name"></asp:Label>
                     <br />
                     <asp:TextBox ID="TxtUserName" runat="server" Width="300px"></asp:TextBox>
                     <br />
                     <br />
                     </td>
             </tr>

              <tr>
                 <td colspan="2" style="vertical-align: middle; text-align: center" class="auto-style1">
                     <asp:Label ID="Label3" runat="server" Text="Password" Font-Bold="True" ForeColor="#9966FF"></asp:Label>
                     <br />
                     <asp:TextBox ID="TxtPswrd" runat="server" Width="300px" ></asp:TextBox>
                   </td>
             </tr>
              
             <tr>
                 <td colspan="2" style="vertical-align: middle; text-align: center">
                    
                     <br />
                    
                     </td>
                 </tr>
             <tr>
                 <td colspan="2" style="vertical-align: middle; text-align: center">
                       <asp:Button ID="BtnSign" runat="server" Text="SignUp" BackColor="#33CC33" Font-Bold="True" Font-Size="Large" Width="270px" OnClick="Button1_Click" />
                 </td>                               
             </tr>
             <tr>
                 <td colspan="2" style="vertical-align: middle; text-align: center">
                     &nbsp;</td>                
             </tr>
          
         </table>
       </div>
                     </asp:Panel>
                 </td>
                 <td style="width: 30%">&nbsp;</td>
             </tr>
            
         </table>

         </div>
    </div>
</asp:Content>
