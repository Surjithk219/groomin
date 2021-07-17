using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Viewinvoice3 : System.Web.UI.Page
{
    private String num;
   
    protected void Page_Load(object sender, EventArgs e)
    {
            num=Session["no"].ToString();
             ConnectionClass obj = new ConnectionClass();
               String qry="select * from Appointment  where aptnumber='"+num+"'";
               DataTable dt =obj.getTable(qry);
               apt.Text=dt.Rows[0]["aptnumber"].ToString();
               txtname.Text = dt.Rows[0]["name"].ToString();
               txtmob.Text = dt.Rows[0]["phone"].ToString();
               txtaptdate.Text = dt.Rows[0]["aptdate"].ToString();
               txtapttime.Text = dt.Rows[0]["tym"].ToString();

               txtemail.Text = dt.Rows[0]["email"].ToString();
               txtapplydate.Text = dt.Rows[0]["applydate"].ToString();
               TextBox2.Text = dt.Rows[0]["service"].ToString();
               String qry1 = " select service from Service where id='" + TextBox2.Text + "'";
               ConnectionClass db = new ConnectionClass();
               String s = db.getSingleData(qry1);
               txtservice.Text = s;
               txtstatus.Text=dt.Rows[0]["status"].ToString();
               if (txtstatus.Text != null)
               {
                   Label1.Visible = false;
                   DropDownList1.Visible = false;
                   txtrdate.Visible = true;
                   txtrdate.Text = dt.Rows[0]["remarkdate"].ToString();
                   Button1.Visible = false;
                   txtremark.ReadOnly = true;
                   txtremark.Text = dt.Rows[0]["remark"].ToString();
          



                   }

              if(String.IsNullOrEmpty(txtstatus.Text))
               {
                   txtrdate.Visible = false;
                   txtremark.ReadOnly = false;
                   DropDownList1.Visible = true;
                   Button1.Visible = true;
                   Label2.Visible = false;
                   Label1.Visible = true;
               }
              
               apt.ReadOnly = true;
               txtname.ReadOnly = true;
               txtmob.ReadOnly = true;

               txtaptdate.ReadOnly = true;
               txtapttime.ReadOnly = true;
               txtemail.ReadOnly = true;
               txtstatus.ReadOnly = true;
               txtapplydate.ReadOnly = true;
               txtservice.ReadOnly = true;
               txtrdate.ReadOnly = true;
        }
    protected void Button1_Click(object sender, EventArgs e)
{
        String no = apt.Text;
        String remark=txtremark.Text;
        String status=DropDownList1.SelectedItem.Text;
            DateTime today=DateTime.Today;
        String d=today.ToString();
        ConnectionClass obj = new ConnectionClass();
        String qry = "update Appointment set status='" + status + "',remark='" + remark + "',remarkdate='" + d + "' where aptnumber='" + no + "'";
        obj.Manipulate(qry);
        String qr1 = "select status,remark,remarkdate from appointment where aptnumber='" + no + "'";
        DataTable dt = obj.getTable(qr1);
        txtstatus.Text = dt.Rows[0]["status"].ToString();
        txtremark.Text = dt.Rows[0]["remark"].ToString();
        txtrdate.Text = dt.Rows[0]["remarkdate"].ToString();
        Label2.Visible = true;
        Label1.Visible = false;
        txtremark.ReadOnly = true;
        txtrdate.Visible = true;
        DropDownList1.Visible = false;
        Button1.Visible = false;
}
}
