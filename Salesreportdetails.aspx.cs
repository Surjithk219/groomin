using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Salesreportdetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String fdate = Session["sd"].ToString();
        String tdate = Session["ed"].ToString();
        String type=Session["rd"].ToString();
        if (type == "MM")
        {
            DateTime datevalue = (Convert.ToDateTime(fdate.ToString()));
            DateTime datevalue2 = (Convert.ToDateTime(tdate.ToString()));
            String mn = datevalue.Month.ToString();
            String mn2 = datevalue2.Month.ToString();
            String qry = "select month(postingdate) as months ,year(postingdate)  as y,sum(cost) as totalprice from  Invoice join Service on Service.id= Invoice.serviceid where month(Invoice.postingdate) between '" + mn + "' and '" + mn2 + "' group by billingid";
        ConnectionClass obj = new ConnectionClass();
        DBOperations db = new DBOperations();
       
            GridView1.DataSource = db.SelectOperation(qry);
        GridView1.DataBind();
       




        }

    }
}