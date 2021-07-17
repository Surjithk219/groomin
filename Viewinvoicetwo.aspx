<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Viewinvoicetwo.aspx.cs" Inherits="Viewinvoicetwo" %>

<!DOCTYPE html>

<html lang="en">
<head >
    <title></title>
    <script>

        function printpage() {
            var getpanel = document.getElementById("<%= Panel1.ClientID%>");
        var MainWindow = window.open('', '', 'height=500,width=800');
        MainWindow.document.write('<html><head><title>Print Page</title>');
        MainWindow.document.write('</head><body>');
        MainWindow.document.write(getpanel.innerHTML);
        MainWindow.document.write('</body></html>');
        MainWindow.document.close();
        setTimeout(function () {
            MainWindow.print();
        }, 500);
        return false;

    }




</script>



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


	<div id="page-wrapper">
			<div class="main-page">
				<div class="forms">
					<h3 class="title1">Invoice</h3>
					<div class="form-grids row widget-shadow" data-example-id="basic-forms"> 
						<div class="form-title">
							<h4>Inoice Details:</h4>
                            <div class="container-fluid">
						</div><br />
                     
                        <asp:Panel ID="Panel1" runat="server">

	<div class="table-responsive bs-example widget-shadow">
						<h4>Invoice    <asp:Label ID="invoicelbl" runat="server" Text="Label"></asp:Label>    </h4>
						<table class="table table-bordered" width="100%" border="1"> 
<tr>
<th colspan="6">Customer Details</th>	
</tr>
							 <tr> 
								<th>Name</th> 
								<td>
                                    <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label></td> 
								<th>Contact no.</th> 
								<td>
                                    <asp:Label ID="lblphone" runat="server" Text="Label"></asp:Label></td>
								<th>Email </th> 
								<td>          <asp:Label ID="lblemail" runat="server" Text="Label"></asp:Label></td>
						
							</tr> 
							 <tr> 
								<th>Gender</th> 
								<td>          <asp:Label ID="lblgender" runat="server" Text="Label"></asp:Label></td>
						
								<th>Invoice Date</th> 
								<td colspan="3">          <asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label></td>
						
							</tr> 
                                       </table>
        </div>


<table class="table table-bordered" width="100%" border="1"> 
<tr>
<th>Services Details</th>	
</tr>


</table>


 <center><asp:GridView ID="GridView1" runat="server" >
     <Columns>
           <asp:TemplateField>
                                        <HeaderTemplate>
                                            SERIAL NUMBER
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <%#Container.DataItemIndex +1 %>
                                        </ItemTemplate>
                                      </asp:TemplateField>    
                                  
     </Columns>
                                    
 </asp:GridView>
</center>


<table class="table table-bordered" width="100%" border="1">
   
<tr>
<th style="text-align:center">Grand Total</th>
<th> <asp:Label ID="lbltotal" runat="server" Text="Label"></asp:Label></th>	

</tr>
        
</table>
<table>
    <tr>
     <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" OnClientClick="return printpage();"/>

                            </tr>

</table>
 
</asp:Panel>
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
