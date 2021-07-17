using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Contact : System.Web.UI.Page
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
        txttitle.Text = dt.Rows[0]["title"].ToString();
         txtphone.Text = dt.Rows[0]["phone"].ToString();
        txtemail.Text = dt.Rows[0]["email"].ToString();
        txttime.Text = dt.Rows[0]["timing"].ToString();
        txtdescrip.Text = dt.Rows[0]["description"].ToString();
        txtaddress.Text = dt.Rows[0]["address"].ToString();
        txtweb.Text = dt.Rows[0]["website"].ToString();
        txttitle.ReadOnly = true;
       
    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        String title = txttitle.Text;
        String phone = txtphone.Text;
        String email = txtemail.Text;
        String Timing = txttime.Text;
        String Des = txtdescrip.Text;
        String add = txtaddress.Text;
        String web = txtweb.Text;
        ConnectionClass obj = new ConnectionClass();
        String qry = "update Contact set phone='"+phone+"',email='"+email+"',timing='"+Timing+"',description='"+ Des+"',address='"+add+"',website='"+web+"' where title='contact'";
        obj.Manipulate(qry);



    }
}