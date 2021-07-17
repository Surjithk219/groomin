using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class About : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String qry = "select pagedescription from About where pagetitle ='About'";
        ConnectionClass obj = new ConnectionClass();
        DataTable dt = obj.getTable(qry);
        Label1.Text = dt.Rows[0]["pagedescription"].ToString();
           
    }
}