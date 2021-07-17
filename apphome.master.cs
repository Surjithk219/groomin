using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class apphome : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {

            bindcontent();

        }

    }
    private void bindcontent()
    {

        ConnectionClass db = new ConnectionClass();
        String qry2 = "select * from Contact where title='contact'";
        DataTable dt = db.getTable(qry2);
        lblphno.Text = dt.Rows[0]["phone"].ToString();
        lblemail.Text = dt.Rows[0]["email"].ToString();
        lblAddress.Text = dt.Rows[0]["address"].ToString();

    }

}