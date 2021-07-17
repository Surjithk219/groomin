using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Home : System.Web.UI.Page
{
    private String datee, service, sty,tym;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindcombo();
            bindlist();
            Texttest.Enabled = false;
        }
    }
    private void bindlist()
    {
        
        String qry = "select * from stylist";
        DBOperations db = new DBOperations();
        ListView1.DataSource = db.SelectOperation(qry);
        ListView1.DataBind();


    }
    private void bindcombo()
    {
        String qry = "select id,service from Service";
        DBOperations db = new DBOperations();
        DropDownList1.DataSource = db.SelectOperation(qry);
        DropDownList1.DataTextField = "service";
        DropDownList1.DataValueField = "id";

        DropDownList1.DataBind();
     
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         String  dy,count;

         String sdate = DateTime.UtcNow.ToString("dd-MM-yyyy");
         DateTime datevlue = (Convert.ToDateTime(sdate.ToString()));
        if (DateTime.Now.Day < 10)
        {
            dy = "0" + DateTime.Now.Day.ToString();
        }
        else
        {
           dy = DateTime.Now.Day.ToString();
        }


        String mn = datevlue.Month.ToString();




        String yr = datevlue.Year.ToString();
     
         ConnectionClass obj = new ConnectionClass();
         String tm = datevlue.Month.ToString();
         String qry = "select count(*) from Appointment where applydate='"+sdate+"'";
         count = obj.getSingleData(qry);
         if (count=="0" )
         {
               count = "0";
            
         }

         String ddddd = yr+dy + mn + count;
                String name = txtname.Text;
        String email = txtemail.Text;

        



         service = DropDownList1.SelectedItem.Value;
         sty = DropDownListsty.SelectedItem.Text;
         datee = Texttest.Text;
         tym =DropDownList2.SelectedItem.Text;
        String phno = txtphono.Text;
        DateTime today=DateTime.Today;
        String d = today.ToString("dd-MM-yyyy");
        Random r = new Random();
        int num = r.Next();
        String aptno = num.ToString();

        String q = "select count(*) from Appointment where service='" + service + "' and aptdate='" + datee + "' and stylist='" + sty + "' and tym='" + tym + "' and status='Selected' ";
        String count100 = obj.getSingleData(q);
        if (count100 == "0")
        {
       
            String qry1 = "insert into Appointment(name,email,service,tym,applydate,phone,aptnumber,aptdate,apt_id,stylist) values('" + name + "','" + email + "','" + service + "','" + tym + "','" + d + "','" + phno + "','" + aptno + "','" + datee + "','" + ddddd + "','" + sty + "')";
            obj.Manipulate(qry1);
            Session["no"] = aptno;
            Response.Redirect("Thankyou.aspx");
        }
        else
        {
            String a = "Slot is booked..... choose another time slot or stylist ";
            Response.Write("<script>alert('" + a + "')</script>");

        }

     

       
        
    }

   

    protected void calender1_SelectionChanged(object sender, EventArgs e)
    {
        Texttest.Text = calender1.SelectedDate.ToShortDateString();

        calender1.Visible = false;
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        calender1.Visible = true;
     //   Texttest.Enabled = true;
    }
    protected void calender1_DayRender(object sender, DayRenderEventArgs e)
    {
      if (e.Day.Date.CompareTo(DateTime.Today) < 0 )
        {
            e.Day.IsSelectable = false;
        }
        if (e.Day.Date > DateTime.Now.AddDays(30))
        {
            e.Day.IsSelectable = false;
        }
        
        
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindstylist();
    }
    private void bindstylist()
    {
        String qry11 = "select name from stylist where specilization ='" + DropDownList1.SelectedItem.Text + "'";
        DBOperations db = new DBOperations();
        DropDownListsty.DataSource = db.SelectOperation(qry11);
        DropDownListsty.DataTextField = "name";
        DropDownListsty.DataValueField = "name";

        DropDownListsty.DataBind();
      

    }

  
   
} 