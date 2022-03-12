<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site3.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Quest.Pages.SignIn" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
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
                     <asp:Label ID="Label2" runat="server" Text="Login to your Account" Font-Bold="True" Font-Size="Large"></asp:Label>
      
                 </td>
             </tr>
             <tr>
                 <td colspan="2" style="vertical-align: middle; text-align: center">
                     <asp:Label ID="Label4" runat="server" Text="User Name" Font-Bold="True" ForeColor="#9966FF"></asp:Label>
                     <br />
                     <asp:TextBox ID="TxtUserName" runat="server" Width="300px"></asp:TextBox>
                     
                     <br />
                     </td>
             </tr>

              <tr>
                 <td colspan="2" style="vertical-align: middle; text-align: center">
                     <asp:Label ID="Label3" runat="server" Text="Password" Font-Bold="True" ForeColor="#9966FF"></asp:Label>
                     <br />
                     <asp:TextBox ID="TxtPswrd" runat="server" Width="300px" ></asp:TextBox>
                   </td>
             </tr>
             <tr>
                 <td colspan="2" style="vertical-align: middle; text-align: center">
                       <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me" />
                       &nbsp;   &nbsp;   &nbsp;
                      <a id="forget" href="#">Forget Password ?</a>
                     </td>
                 </tr>
             <tr>
                 <td colspan="2" style="vertical-align: middle; text-align: center">
                       <asp:Button ID="Button1" runat="server" Text="LogIn" BackColor="#33CC33" Font-Bold="True" Font-Size="Large" Width="270px" OnClick="Button1_Click" />
                 </td>                               
             </tr>
             <tr>
                 <td colspan="2" style="vertical-align: middle; text-align: center">
                     <asp:Label ID="Label1" runat="server" Text="or Sign Up as"></asp:Label>
                    </td>                
             </tr>
             <tr>
                 <td style="vertical-align: middle; text-align: center"><asp:Button ID="BtnAdmin" runat="server" Text="Admin" Height="45px" Width="150px" Font-Bold="True" Font-Size="Large" OnClick="BtnAdmin_Click" /></td>
                 <td style="vertical-align: middle; text-align: center"><asp:Button ID="BtnUser" runat="server" Text="User" Height="45px" Width="150px" Font-Bold="True" Font-Size="Large" OnClick="BtnUser_Click" /></td>
             </tr>
                              <tr>
                                  <td colspan="2">
                                       <br />
                     <br />
                     <br />
                                  </td>
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
