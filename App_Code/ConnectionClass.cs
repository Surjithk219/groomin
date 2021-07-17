using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
/// <summary>
/// Summary description for ConnectionClass
/// </summary>
public class ConnectionClass
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
	public ConnectionClass()
	{
        con.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\KOCHU\groom\App_Data\groom.mdf;Integrated Security=True";
        cmd.Connection = con;
        
        //
		// TODO: Add constructor logic here
		//
	}
    public String Manipulate(String qry)
    {

        String msg = "";

        try
        {
            con.Open();
            cmd.CommandText = qry;
            cmd.ExecuteNonQuery();

            msg = "success";


        }
        catch (Exception ex)
        {
            msg = ex.Message;
        }
        finally
        {

            con.Close();

        }
        return msg;
    }

    public DataTable getTable(String qry)
    {
        DataTable dt = new DataTable();
        cmd.CommandText = qry;
        SqlDataAdapter adp = new SqlDataAdapter();
        adp.SelectCommand = cmd;
        adp.Fill(dt);
        return dt;




    }

    public String getSingleData(String qry)
    {
        String data = "";
        try
        {

            con.Open();
            cmd.CommandText = qry;
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd != null && rd.Read())
            {
                data = rd.GetValue(0).ToString();
            }
            rd.Close();
            con.Close();


        }
        catch (Exception ex)
        {

            con.Close();

        }
        finally
        {
            con.Close();
        }

        return data;
    }
}