<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Salereport.aspx.cs" Inherits="Salereport" %>

<!DOCTYPE html>

<html lang="en">
<head id="head1" runat="server">
    <title></title>

    <!--<script src="Salereport.aspx.cs" type="text/javascript"></script>
    <script type="text/javascript">
        $query9=mysqli_query($con,"select Invoice.serviceid as ServiceId, Service.Cost from Invoice join Service  on Service.id=Invoice.serviceid");
        while($row9=mysqli_fetch_array($query9))
        {
$total_sale=$row9['cost'];
        $totalsale+=$total_sale;

        }
        document.getElementById('#<%=lbltotalsale.ClientID%>'.html("hello"));
    </script>-->




     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/sidebar-01/sidebar-01/css/font-awesome.min.css">
		<link rel="stylesheet" href="sidebar-01/sidebar-01/css/style.css">
</head>
<body> 
    <form id="form1" runat="server">
    <div>
        <div>
         <div class="wrapper d-flex align-items-stretch">
					<nav id="sidebar">
				<div class="p-4 pt-5">
		  		<a href="#" class="img logo rounded-circle mb-5" style="background-image: url(sidebar-01/sidebar-01/images/IMG_4607.JPG);"></a>
	        <ul class="list-unstyled components mb-5">
	          <li class="active">
	            
                             
             <a href="Salereport.aspx">Dashboard</a>
                </li>
                
               
	        
	       
	          
                 <li>
<a href="#serSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Services</a>
              <ul class="collapse list-unstyled" id="serSubmenu">
                <li>
                            <a href="Addservice.aspx">Add Services</a>
                </li>
                <li>
                   <a href="Manageservice.aspx">Manage Services</a>
                </li>
               
              </ul>
	          </li>

              <li>

	          <li>


              <a href="#styleSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Stylist</a>
              <ul class="collapse list-unstyled" id="styleSubmenu">
                <li>
                    <a href="Addstylist.aspx">Add Stylist</a>
                </li>
                <li>
                    <a href="Viewstylist.aspx">Manage Stylist</a>
                </li>
               
              </ul>
	          </li>

              <li>

	          <li>
              <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Pages</a>
              <ul class="collapse list-unstyled" id="pageSubmenu">
                <li>
                    <a href="Contact.aspx">Contact Us</a>
                </li>
                <li>
                    <a href="AboutUs.aspx">About Us</a>
                </li>
               
              </ul>
	          </li>

              <li>
                
              <a href="#appointmentSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Appointments</a>
                <ul class="collapse list-unstyled" id="appointmentSubmenu">
                <li>
                    <a href="Allappointment.aspx">All Appointments </a>
                </li>
                <li>
                    <a href="Newappointment.aspx">New Appointments</a>
                </li>
               <li>
                    <a href="Acceptedappointment.aspx">Accepted Appointments </a>
                </li>
                <li>
                    <a href="Rejectedappointment.aspx">Rejected Appointments</a>
                </li>


              </ul>

	          </li>
	          <li>
              <a href="Customer.aspx">Add Customer</a>
	          </li>
	          <li>
              <a href="Customerlist.aspx">Customer List</a>
	          </li>
                  <li>
              <a href="#pagereport" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Reports</a>
              <ul class="collapse list-unstyled" id="pagereport">
                <li>
                    <a href="bwdates.aspx">B/w Dates </a>
                </li>
                

              </ul>

	          </li>
                  <li>
              <a href="Searchinvoice.aspx">Invoices</a>
	          </li>
	          <li>
              <a href="Searchappointment.aspx">Search Appointment</a>
	          </li>
                <li>
              <a href="Admin.aspx">Logout</a>
	          </li>
	        </ul>

	      

	      </div>
    	</nav>
        <!-- Page Content  -->
      <div id="content" class="p-4 p-md-5" style="background-color:white;color:black; background-image:url(camille/camille/images/bg-2.jpg)">


<div id="page-wrapper" class="row calender widget-shadow">
			<div class="main-page">
				
			
				<div class="row calender widget-shadow">
					<div class="row-one">
                        <div class="container" style="margin-bottom:10px;">
                        	<table style="background-size:cover">
					<tr>


					<td style="background-color:orange; width:250px" >
                        <div class="col-md-4 widget">
						<div class="stats-left ">
							<h5 style="color:white;"><b><center>Total</center></b></h5>
							<h4 style="color:white;"><b><center>Customer</center></b></h4>
                            
						</div>
						<div class="stats-right">
						</div>
						<div class="clearfix"> </div>	
					</div>

					</td>
						<td style="background-color:white;width:50px">

                            <asp:Label ID="lbltotalcustomer" runat="server" Text="Label" Font-Bold="true" Font-Size="XX-Large"  ForeColor="Orange"></asp:Label>

						</td>



						<td style="background-color:blue; width:250px">
                            <div class="col-md-4 widget states-last">
						
						<div class="stats-left ">
							<h5 style="color:white;"><b><center>Total</center></b></h5>
							<h4 style="color:white;"><b><center>Appointment</center></b></h4>
                            
						</div>
						<div class="stats-right">
							
						</div>
						<div class="clearfix"> </div>	
					</div>

						</td>

                   <td style="background-color:white;width:50px">

                            <asp:Label ID="lbltotalappointment" runat="server" Text="Label" Font-Bold="true"  Font-Size="XX-Large"  ForeColor="Blue"></asp:Label>

						</td>


				        	<td style="background-color:black; width:250px">
                            <div class="col-md-4 widget states-last">
						
						<div class="stats-left">
					        <h5 style="color:white;"><b><center>Total</center></b></h5>
							<h4 style="color:white;"><b><center>Accepted </center></b></h4>
                            <h4 style="color:white;"><b><center>Appointment</center></b></h4>
                  			
                  				</div>
						<div class="stats-right">
							
						</div>
						<div class="clearfix"> </div>	
					</div>

						</td>

                   <td style="background-color:white;width:50px">

                            <asp:Label ID="Lblacceptedappointment" runat="server" Text="Label"  Font-Size="XX-Large"  Font-Bold="true" ForeColor="Black"></asp:Label>

						</td>
</tr>
	
                                </table>
                        </div>


      <div class="container" style="margin-bottom:10px;">
                        	<table style="background-size:cover">
					<tr>


					<td style="background-color:orange; width:250px" >
                        <div class="col-md-4 widget">
						<div class="stats-left ">
							<h5 style="color:white;"><b><center>Total</center></b></h5>
							<h4 style="color:white;"><b><center>Rejected</center></b></h4>
                            <h4 style="color:white;"><b><center>Appointment</center></b></h4>
                           
						</div>
						<div class="stats-right">
						</div>
						<div class="clearfix"> </div>	
					</div>

					</td>
						<td style="background-color:white;width:50px">

                            <asp:Label ID="lblrejctedappointment" runat="server" Text="Label"  Font-Size="XX-Large"  Font-Bold="true" ForeColor="Orange"></asp:Label>

						</td>



						<td style="background-color:blue; width:250px">
                            <div class="col-md-4 widget states-last">
						
						<div class="stats-left ">
							<h5 style="color:white;"><b><center>Total</center></b></h5>
							<h4 style="color:white;"><b><center>Service</center></b></h4>
                            
						</div>
						<div class="stats-right">
							
						</div>
						<div class="clearfix"> </div>	
					</div>

						</td>

                   <td style="background-color:white;width:50px">

                            <asp:Label ID="lbltotalservice" runat="server" Text="Label"  Font-Size="XX-Large"  Font-Bold="true" ForeColor="Blue"></asp:Label>

						</td>


				        	<td style="background-color:black; width:250px">
                            <div class="col-md-4 widget states-last">
						
						<div class="stats-left">
					<h5 style="color:white;"><b>Total</b></h5>
							<h4 style="color:white;"><b>Todays</b></h4>
                            <h4 style="color:white;"><b>Sales</b></h4>
                  			
                  				</div>
						<div class="stats-right">
							
						</div>
						<div class="clearfix"> </div>	
					</div>

						</td>

                   <td style="background-color:white;width:50px">

                            <asp:Label ID="lbltotaltodaysales" runat="server" Text="Label"  Font-Size="XX-Large"  Font-Bold="true" ForeColor="Black"></asp:Label>

						</td>
</tr>
	
                                </table>
                        </div>


      <div class="container" style="margin-bottom:10px;">
                        	<table style="background-size:cover">
					<tr>


					<td style="background-color:orange; width:250px" >
                        <div class="col-md-4 widget">
						<div class="stats-left ">
							<h5 style="color:white;"><b>Total</b></h5>
							<h4 style="color:white;"><b>Yesterdays</b></h4>
                            	<h4 style="color:white;"><b>Sale</b></h4>
                        
						</div>
						<div class="stats-right">
						</div>
						<div class="clearfix"> </div>	
					</div>

					</td>
						<td style="background-color:white;width:50px">

                            <asp:Label ID="lblyesterday" runat="server" Text="Label" Font-Bold="true"  Font-Size="XX-Large"   ForeColor="Orange"></asp:Label>

						</td>



						<td style="background-color:blue; width:250px">
                            <div class="col-md-4 widget states-last">
						
						<div class="stats-left ">
							<h5 style="color:white;"><b>Total</b></h5>
							<h4 style="color:white;"><b>Last 7 days</b></h4>
                            
						</div>
						<div class="stats-right">
							
						</div>
						<div class="clearfix"> </div>	
					</div>

						</td>

                   <td style="background-color:white;width:50px">

                            <asp:Label ID="lbltotal7day" runat="server" Text="Label" Font-Bold="true"  Font-Size="XX-Large"  ForeColor="Blue"></asp:Label>

						</td>


				        	<td style="background-color:black; width:250px">
                            <div class="col-md-4 widget states-last">
						
						<div class="stats-left">
					<h5 style="color:white;"><b>Total</b></h5>
							<h4 style="color:white;"><b>Sales </b></h4>
                   		
                  				</div>
						<div class="stats-right">
							
						</div>
						<div class="clearfix"> </div>	
					</div>

						</td>

                   <td style="background-color:white;width:50px">

                            <asp:Label ID="lbltotalsale" runat="server" Text="Label" Font-Bold="true"  Font-Size="XX-Large"  ForeColor="Black"></asp:Label>

						</td>
</tr>
	
                                </table>
                        </div>

                        '

                       </div>
						</div>
					</div>

	






   </div>
		</div>
    
    </div>
        </div>
    
         
	     <script src="sidebar-01/sidebar-01/js/jquery.min.js"></script>
    <script src="sidebar-01/sidebar-01/js/popper.js"></script>
    <script src="sidebar-01/sidebar-01/js/bootstrap.min.js"></script>
    <script src="sidebar-01/sidebar-01/js/main.js"></script> 
    </form>
</body>
</html>
