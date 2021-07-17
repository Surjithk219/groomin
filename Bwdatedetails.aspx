<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bwdatedetails.aspx.cs" Inherits="Bwdatedetails" %>

<!DOCTYPE html>

<html lang="en">
<head id="head1" runat="server">
    <title></title>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/sidebar-01/sidebar-01/css/font-awesome.min.css">
		<link rel="stylesheet" href="sidebar-01/sidebar-01/css/style.css">



</head>
<body>

 <form id="form2" runat="server">
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
      <div id="Div1" class="p-4 p-md-5" style="background-color:white;color:black; background-image:url(camille/camille/images/bg-2.jpg)">

	<div id="page-wrapper">
			<div class="main-page">
				<div class="forms">
						<div class="form-grids row widget-shadow" data-example-id="basic-forms"> 
						<div class="form-title">
							<h4>Reports</h4>
						</div>
                        <div class="container">
                              <asp:GridView ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound">
                             <Columns>
           <asp:TemplateField>
                                        <HeaderTemplate>
                                            SERIAL NUMBER
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                           <%#Container.DataItemIndex +1 %>
                                   </ItemTemplate>
                  </asp:TemplateField>    
        <asp:TemplateField>

              <HeaderTemplate>
                   ACTION
               </HeaderTemplate>
         <ItemTemplate>
             
              <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Get Details</asp:LinkButton>         
                    
         </ItemTemplate>
        </asp:TemplateField>
             
             
                                   
                          
                                                           
     </Columns>
                   
                  
                        </asp:GridView>
                        </div>
                      
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
