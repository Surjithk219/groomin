<%@ Page Title="" Language="C#" MasterPageFile="~/apphome.master" AutoEventWireup="true" CodeFile="Thankyou.aspx.cs" Inherits="Thankyou" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <section class="hero-wrap hero-wrap-2" style="background-image: url('camille/camille/images/bg-2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate pb-5">
            <h2 class="mb-0 bread">Thank You</h2>
            <p class="breadcrumbs"><span class="mr-2"><a href="Appointment.aspx">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Thank You <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>

     <section class="ftco-section ftco-no-pb">
    	<div class="container">
    		<div class="row no-gutters justify-content-center mb-5 pb-2">
          <div class="col-md-6 text-center heading-section ftco-animate">
          	<h4 class="w3ls_head">Thank you for applying. Your Appointment no is <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h4>
        </div>
    	</div>
		</div>

         </section>


</asp:Content>

