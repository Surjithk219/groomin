using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Searchdetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        ConnectionClass obj = new ConnectionClass();
        String s = Session["serc"].ToString();

        String qry1 = "select count(*)   from  Appointment where aptnumber like '%" + s + "%'  or name like '%" + s + "%' ";
        String count = obj.getSingleData(qry1);
        if (count == "0")
        {

            Response.Write("<script>alert('Not Found');location.href='Searchappointment.aspx';</script>");

             
            // Response.Write("<script>alert('" + a + "')</script>");
          
        }
        else
        {



            String qry = "select  aptnumber,name,phone,aptdate,tym    from  Appointment where aptnumber like '%" + s + "%'  or name like '%" + s + "%' ";
            DataTable dt = obj.getTable(qry);
            String no = dt.Rows[0]["aptnumber"].ToString();

            Session["no"] = no;
            DBOperations db = new DBOperations();
            GridView1.DataSource = db.SelectOperation(qry);
            GridView1.DataBind();

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Viewinvoice3.aspx");
    }
}