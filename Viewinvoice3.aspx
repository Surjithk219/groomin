<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Viewinvoice3.aspx.cs" Inherits="Viewinvoice3" %>

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
    <form id="form1" runat="server">
    
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
      <div id="content" class="p-4 p-md-5">

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <div class="container-fluid">

            <button type="button" id="sidebarCollapse" class="btn btn-primary">
              <i class="fa fa-bars"></i>
              <span class="sr-only">Toggle Menu</span>
            </button>
            <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa fa-bars"></i>
            </button>

           <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="nav navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Portfolio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
              </ul>
            </div>
          </div>
        </nav>

	<div id="page-wrapper">
			<div class="main-page">
				<div class="forms">
					<h3 class="title1">Invoice</h3>
					<div class="form-grids row widget-shadow" data-example-id="basic-forms"> 
						<div class="form-title">
							<h4>Invoice Details:</h4>
                            <div class="container-fluid">
						</div><br />
                        APPOINTMENT NUMBER<asp:TextBox ID="apt" runat="server" class="form-control"> </asp:TextBox>
                        NAME<asp:TextBox ID="txtname" runat="server"  class="form-control"></asp:TextBox>
                        MOBILE NUMBER<asp:TextBox ID="txtmob" runat="server"  class="form-control"></asp:TextBox>
                        EMAIL<asp:TextBox ID="txtemail" runat="server"  class="form-control"></asp:TextBox>
                     
                          APPOINTMENTDATE<asp:TextBox ID="txtaptdate" runat="server" class="form-control" ></asp:TextBox>
                        APPOINTMENT TIME<asp:TextBox ID="txtapttime" runat="server" class="form-control"></asp:TextBox>
                        SERVICE<asp:TextBox ID="txtservice" runat="server" class="form-control"></asp:TextBox>
                        APPLYDATE<asp:TextBox ID="txtapplydate" runat="server" class="form-control"></asp:TextBox>
                        STATUS<asp:TextBox ID="txtstatus" runat="server" class="form-control"></asp:TextBox>
                        <asp:TextBox ID="TextBox2" runat="server" Visible="false"></asp:TextBox>
                        <div class="container">
                            <div class="container-fluid">
                         REMARK:<asp:TextBox ID="txtremark" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                                <asp:Label ID="Label1" runat="server" Text="STATUS:"></asp:Label> <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" placeholder="select">
                            <asp:ListItem>Rejected</asp:ListItem>
                            <asp:ListItem>Selected</asp:ListItem>
                        </asp:DropDownList> 
                           <asp:Label ID="Label2" runat="server" Text="REMARK DATE:"></asp:Label><asp:TextBox ID="txtrdate" class="form-control" runat="server" Visible="false"></asp:TextBox>
                        </div>
                            </div>

                        <asp:Button ID="Button1" runat="server" class="btn btn-primary pull-right" Text="SUBMIT" OnClick="Button1_Click" />
                        <asp:TextBox ID="TextBox1" runat="server" Visible="false"></asp:TextBox>
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
