<%@ Page Title="" Language="C#" MasterPageFile="~/apphome.master" AutoEventWireup="true" CodeFile="Appointment.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <section id="home-section" class="hero" style="background-image: url(camille/camille/images/bg.jpg);" data-stellar-background-ratio="0.5">
		  <div class="home-slider owl-carousel">
	      <div class="slider-item js-fullheight">
	      	<div class="overlay"></div>
	        <div class="container-fluid p-0">
	          <div class="row d-md-flex no-gutters slider-text align-items-end justify-content-end" data-scrollax-parent="true">
	          	<img class="one-third align-self-end order-md-last img-fluid" src="camille/camille/images/bg_1.png" alt="">
		          <div class="one-forth d-flex align-items-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
		          	<div class="text mt-5">
		          		<span class="subheading">Camille Salon</span>
			            <h1 class="mb-4">Get Pretty Look</h1>
			            <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country.</p>
			            
			                <p><a href="Viewstatus.aspx" class="btn btn-primary py-3 px-4">View Status</a></p>
		        </div>
		          </div>
	        	</div>
	        </div>
	      </div>

	      <div class="slider-item js-fullheight">
	      	<div class="overlay"></div>
	        <div class="container-fluid p-0">
	          <div class="row d-flex no-gutters slider-text align-items-center justify-content-end" data-scrollax-parent="true">
	          	<img class="one-third align-self-end order-md-last img-fluid" src="camille/camille/images/bg_2.png" alt="">
		          <div class="one-forth d-flex align-items-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
		          	<div class="text mt-5">
		          		<span class="subheading">Natural Beauty</span>
			            <h1 class="mb-4">Beauty Salon</h1>
			            <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country.</p>
			            
			            <p><a href="Viewstatus.aspx" class="btn btn-primary py-3 px-4">View Status</a></p>
		            </div>
		          </div>
	        	</div>
	        </div>
	      </div>
	    </div>
    </section>
   
      <section class="ftco-section ftco-no-pt ftco-booking">
    	<div class="container-fluid px-0">
    		<div class="row no-gutters d-md-flex justify-content-end">
    			<div class="one-forth d-flex align-items-end">
    				<div class="text">
    					<div class="overlay"></div>
    					<div class="appointment-wrap"  >
    						<span class="subheading">Reservation</span>
								<h3 class="mb-2">Make an Appointment</h3>
		    				<form action="#" class="appointment-form">
			            <div class="row">
			              <div class="col-sm-12">
			                <div class="form-group">
					               <asp:TextBox ID="txtname" class="form-control" runat="server" placeholder="Name" required="required"></asp:TextBox>
					            
                           
                            
                            </div>
			              </div>
			              <div class="col-sm-12">
			                <div class="form-group">
					                <asp:TextBox ID="txtemail" Class="form-control" runat="server"  placeholder="Email" required="required" ></asp:TextBox>

                                <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                               </div>

                             

                                       </div> 
                                          <div class="col-sm-12">
			                <div class="form-group">
				            
					             <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" required="required"  OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true" ></asp:DropDownList>
    
					            </div>
                                              </div>
                                          
			              
                                     


			              



                             <div class="col-sm-12">
			                <div class="form-group">
					             <asp:DropDownList ID="DropDownListsty" class="form-control" runat="server"  required="required" ></asp:DropDownList>
    
					            </div>
			              </div>

                              
			          

                                <div class="col-sm-12">
			                    <div class="form-group">

                                   
                                  


                                    <table>
                                        <tr>
                                            <td>
<asp:TextBox ID="Texttest" runat="server" width="293px" required Height="50px" class="form-control"  > </asp:TextBox>


            


                                            </td>
                                            <td>
<asp:ImageButton ID="ImageButton1" OnClick="ImageButton1_Click" required runat="server" ImageUrl="camille/camille/images/icon-calendar-3.jpg" Height="50px" Width="60px" />
                              
                                            </td>
                                        </tr>


                                    </table>


                    




                                       <asp:Calendar ID="calender1" runat="server" required="required" NextMonthText="next" Enabled="True" visible="false" Height="50px" Width="50px" OnDayRender="calender1_DayRender" OnSelectionChanged="calender1_SelectionChanged" Format="dd/MM/yyyy"></asp:Calendar>
                        

                   
			               </div>    
			              </div>

                                        









                           
                            <div class="col-sm-12">
			                  <div class="form-group">

			             
                                                                 <asp:DropDownList ID="DropDownList2" class="form-control"   runat="server" required="required" >
                                <asp:ListItem>Time</asp:ListItem>
                                <asp:ListItem Value="1">10:00 am</asp:ListItem>
  <asp:ListItem Value="2">10:30 am</asp:ListItem>
  <asp:ListItem Value="3">11:00 am</asp:ListItem>
  <asp:ListItem Value="4">11:30 am</asp:ListItem>
  <asp:ListItem Value="5">12:00 pm</asp:ListItem>
  <asp:ListItem Value="6">12:30 pm</asp:ListItem>
  <asp:ListItem Value="7">01:00 pm</asp:ListItem>
  <asp:ListItem Value="8">02:00 am</asp:ListItem>
  <asp:ListItem Value="9">02:30 pm</asp:ListItem>
  <asp:ListItem Value="10">03:00 pm</asp:ListItem>
  <asp:ListItem Value="11">03:30 pm</asp:ListItem>
  <asp:ListItem Value="12">04:00 pm</asp:ListItem>
  <asp:ListItem Value="9">04:30 pm</asp:ListItem>
  <asp:ListItem Value="10">05:00 pm</asp:ListItem>
  <asp:ListItem Value="11">05:30 pm</asp:ListItem>
  <asp:ListItem Value="12">06:00 pm</asp:ListItem>
<asp:ListItem Value="9">06:30 pm</asp:ListItem>
  <asp:ListItem Value="10">07:00 pm</asp:ListItem>
  <asp:ListItem Value="11">07:30 pm</asp:ListItem>
  <asp:ListItem Value="12">08:00 pm</asp:ListItem>

  
                            </asp:DropDownList>

</div>
 </div>




			              
			              <div class="col-sm-12">
			                <div class="form-group">
			                 <asp:TextBox ID="txtphono"  runat="server" TextMode="Phone"  Class="form-control" placeholder="phone" required pattern="[789][0-9]{9}" title="Please enter valid mobile number"  min="0" MaxLength="10"></asp:TextBox>
                                
            

                             




                              </div>
			              </div>
				          </div>
				          <div class="form-group" style="padding-bottom:20px">
			        <asp:Button ID="Button1" runat="server" Text="Make an Appointment"  class="btn btn-primary"  OnClick="Button1_Click" />
                   </div>
			          </form>
		          </div>  
						</div>
    			</div>
					<div class="one-third">
						<div class="img" style="background-image: url(camille/camille/images/bg-1.jpg);">
						</div>
					</div>
    		</div>
    	</div>
    </section>



      <section class="ftco-section ftco-team">
    	<div class="container">
    		<div class="row justify-content-center pb-3">
          <div class="col-md-10 heading-section text-center ftco-animate">
          	<h1 class="big">Stylist</h1>
          	<span class="subheading">Artistic Director</span>
            <h2 class="mb-4">Makeup Artist</h2>
            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
          </div>
        </div>
    	</div>
    	<div class="container">
        <div class="row">
        	<div class="col-md-12">
        		<div class="carousel-team owl-carousel">
        				
                       <asp:ListView ID="ListView1" runat="server">
                            <ItemTemplate >

                           <div class="item">
		        	<a href="#" class="team text-center">
		        			<div class="img" style="background-image:url(/Upload/<%#Eval("photo") %>);"></div>
		        			<h2><%#Eval("name") %></h2>
		        			<span class="position"><%#Eval("specilization") %></span>
                        			<h2><%#Eval("phone") %></h2>
		        
		        		</a>
                               </div>


</ItemTemplate>
                       </asp:ListView> 
                        
                        
                        
                        
                        
                        
                       
        			
        </div>
    	</div>
                </div>
            </div>
          
    </section>
    



   
</asp:Content>


