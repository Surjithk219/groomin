<%@ Page Title="" Language="C#" MasterPageFile="~/apphome.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section class="hero-wrap hero-wrap-2" style="background-image: url('camille/camille/images/bg-2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate pb-5">
            <h2 class="mb-0 bread">About</h2>
            <p class="breadcrumbs"><span class="mr-2"><a href="Appointment.aspx">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>About <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>
    
      <section class="ftco-section ftco-no-pb ftco-no-pt">
			<div class="container">
				<div class="row">
					<div class="col-md-6 d-flex">
						<div class="p-md-5 img img-2 d-flex justify-content-center align-items-center" style="background-image: url('camille/camille/images/about.jpg');">
								<span class="icon-play"></span>
							
						</div>
					</div>
					<div class="col-md-6 py-md-5 pb-5 wrap-about pb-md-5 ftco-animate">
	          <div class="heading-section mb-4 mt-md-5">
	          	<h1 class="big">About</h1>
	          	<span class="subheading">About Us</span>
	            <h2 class="mb-4">A World Class Beauty Salon Company</h2>
	          </div>
	          <div class="pb-md-5">
						<p>
          <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></p>			</div>
					</div>
				</div>
			</div>
		</section>

</asp:Content>

