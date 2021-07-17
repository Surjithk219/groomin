<%@ Page Title="" Language="C#" MasterPageFile="~/apphome.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <section class="hero-wrap hero-wrap-2" style="background-image: url('camille/camille/images/bg-2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate pb-5">
            <h2 class="mb-0 bread">Services</h2>
            <p class="breadcrumbs"><span class="mr-2"><a href="Appointment.aspx">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Services <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>
       <section class="ftco-section ftco-pricing">
			<div class="container">
				<div class="row justify-content-center pb-3">
          <div class="col-md-10 heading-section text-center ftco-animate">
          	<h1 class="big">Pricing</h1>
          	<span class="subheading">Pricing</span>
            <h2 class="mb-4">Our Service Prices</h2>
            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
          </div>
        </div>
                </div>
           </section>

    <div style="word-wrap:break-word;table-layout:fixed"><center>
         <asp:GridView ID="GridView1" Width="915px" Height="415px" runat="server"   AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>

            <asp:TemplateField>
                                        <HeaderTemplate>
                                         <b>SERIAL NUMBER</b>   
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <%#Container.DataItemIndex +1 %>
                                        </ItemTemplate>
                                      </asp:TemplateField>  

            <asp:BoundField DataField="service" HeaderStyle-Font-Bold="true"   HeaderText="SERVICES" SortExpression="service" >
<HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:BoundField>
            <asp:BoundField DataField="cost" HeaderStyle-Font-Bold="true" HeaderText="COST" SortExpression="cost" >
<HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:BoundField>
        </Columns>
             <FooterStyle BackColor="#CCCCCC" />
             <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
             <RowStyle BackColor="White" />
             <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F1F1F1" />
             <SortedAscendingHeaderStyle BackColor="#808080" />
             <SortedDescendingCellStyle BackColor="#CAC9C9" />
             <SortedDescendingHeaderStyle BackColor="#383838" />
      </asp:GridView>
        =
                                                         </center>
 




    </div>
  




      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnections %>" SelectCommand="SELECT [service], [cost] FROM [Service] ORDER BY [cost] DESC"></asp:SqlDataSource>







</asp:Content>

