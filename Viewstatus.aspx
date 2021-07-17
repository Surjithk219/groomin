<%@ Page Title="" Language="C#" MasterPageFile="~/apphome.master" AutoEventWireup="true" CodeFile="Viewstatus.aspx.cs" Inherits="Viewstatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <section class="hero-wrap hero-wrap-2" style="background-image: url('camille/camille/images/bg-2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate pb-5">
            <h2 class="mb-0 bread">View Status</h2>
            <p class="breadcrumbs"><span class="mr-2"><a href="Appointment.aspx">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>View Status <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>
    <div class="container" style="margin-top:100px">
        <table><tr><td><div class="form-group">
					               <asp:TextBox ID="txtaptnumber" runat="server" placeholder="Number"></asp:TextBox>
					            </div>

                   </td></tr>
            <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Visible="false" Font-Bold="true" Font-Size="XX-Large" Text="Label"></asp:Label>
            </td>
               </tr>
            <tr>
                 <td>
                <asp:Label ID="Label2" runat="server" Visible="false" Font-Bold="true" Font-Size="XX-Large" Text="Label"></asp:Label>
            </td>
            </tr>
        </table>
                              
                     <div class="form-group">
			        <asp:Button ID="Button1" runat="server" Text="View Status" class="btn btn-primary" OnClick="Button1_Click" />
                     </div>


    </div>
                             

</asp:Content>

