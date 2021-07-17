using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Bwdatedetails : System.Web.UI.Page
{
  private String utype;
    protected void Page_Load(object sender, EventArgs e)
    {

        String startdate = Session["sdate"].ToString();
        String enddate = Session["edate"].ToString();
        String qry="select distinct Customer.name,Invoice.billingid,Invoice.postingdate from  Customer join Invoice on Customer.customer_id=Invoice.userid  where Invoice.postingdate between '"+startdate+"' and '"+enddate+"'";
        DBOperations db = new DBOperations();
        GridView1.DataSource = db.SelectOperation(qry);
        GridView1.DataBind();
        String qry1 = "select distinct Invoice.billingid from  Customer join Invoice on Customer.customer_id=Invoice.userid  where Invoice.postingdate between '" + startdate + "' and '" + enddate + "'";
        ConnectionClass obj = new ConnectionClass();
       
       utype =obj.getSingleData(qry1);
    //    public string utype{get;set;}
       



    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["bill"]=utype;
        Response.Redirect("Viewinvoicetwo.aspx");
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)
        {
            e.Row.Cells[2].Text = "NAME";
            e.Row.Cells[3].Text = "BILLING ID";
            e.Row.Cells[4].Text = "POSTING DATE";



        }
       
    }
}