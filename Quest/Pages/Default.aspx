<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site3.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Quest.Pages.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<div class="section-container border-section-container">
    <div class="white-text-container background-image-container" style="background-image: url('./assets/images/img-home.jpg')">
    <div class="opacity"></div>
    <div class="container">
        <div class="row">
           
            <div class="col-md-6">
                <h1>Quest</h1>
                <%--<p>slogan </p>--%>
                 <a href="./TourReservation.aspx" title="" class="btn btn-lg btn-primary">Offers</a>
            </div>

        </div>
    </div>
</div>
    <div class="container">
            <div class="row">
               <div class="col-md-12 section-container-spacer">
                    <div class="text-center">
                        <h2>Most popular places</h2>  
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="fa-container">
                       <%-- <i class="fa fa-comment-o fa-3x" aria-hidden="true"></i>--%>
                        <asp:Image ID="Image4" runat="server" ImageUrl="~/pages/assets/images/giza.jpg" Width="200px" />
     
                    </div>
                    <div class="text-center">
                        <h3>Giza</h3>
                    </div>
                  <%--  <div>
                        <p>.</p>
                    </div>--%>
                </div>
                <div class="col-md-4">
                    <div class="fa-container">
                       <%-- <i class="fa fa-heart-o fa-3x" aria-hidden="true"></i>--%>

     <asp:Image ID="Image1" runat="server" ImageUrl="~/pages/assets/images/Luxor.jpg" Width="200px" />
                    </div>
                    <div class="text-center">
                        <h3>Luxor</h3>
                    </div>
                   <%-- <div>
                        <p>.
                        </p>
                    </div>--%>
                </div>
                <div class="col-md-4">
                    <div class="fa-container">
                       <%-- <i class="fa fa-bell-o fa-3x" aria-hidden="true"></i>--%>
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/pages/assets/images/cairo.jpg" Width="200px" />
                    </div>
                    <div class="text-center">
                        <h3>Cairo</h3>
                    </div>
                   <%-- <div>
                        <p>.
                        </p>
                    </div>--%>
                </div>

            </div>
        <div class="row">             
                <div class="col-md-4">
                    <div class="fa-container">
                        <%--<i class="fa fa-comment-o fa-3x" aria-hidden="true"></i>--%>
                        <asp:Image ID="Image5" runat="server" ImageUrl="../pages/assets/images/Hurghada.jpg" Width="200px" />
                    </div>
                    <div class="text-center">
                        <h3>Hurghada</h3>
                    </div>
                    <%--<div>
                        <p>.</p>
                    </div>--%>
                </div>
                <div class="col-md-4">
                    <div class="fa-container">
                      <%--  <i class="fa fa-heart-o fa-3x" aria-hidden="true"></i>--%>

     <asp:Image ID="Image2" runat="server" ImageUrl="~/pages/assets/images/dahab.jpg" Width="200px" />
                    </div>
                    <div class="text-center">
                        <h3>Dahab </h3>
                    </div>
                   <%-- <div>
                        <p>.
                        </p>
                    </div>--%>
                </div>
                <div class="col-md-4">
                    <div class="fa-container">
                        <%--<i class="fa fa-bell-o fa-3x" aria-hidden="true"></i>--%>
                        <asp:Image ID="Image6" runat="server" ImageUrl="~/pages/assets/images/newalamein.jpg" Width="200px" />
                    </div>
                    <div class="text-center">
                        <h3>New Alamein</h3>
                    </div>
                    <%--<div>
                        <p>. 
                        </p>
                    </div>--%>
                </div>

            </div>
    
    </div>
</div>


</asp:Content>
