using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Summary description for DBOperations
/// </summary>
public class DBOperations
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
	public DBOperations()
	{
        con.ConnectionString = ConfigurationManager.ConnectionStrings["MyConnections"].ConnectionString;
        cmd.Connection = con;
	}
    public DataTable SelectOperation(String sql)
    {
        cmd.CommandText = sql;
        DataTable dtt = new DataTable();
        SqlDataAdapter addp = new SqlDataAdapter();

        addp.SelectCommand = cmd;
        addp.Fill(dtt);
        return dtt;

    }
    public String DMLOperation(String sql)
    {
        try
        {
            con.Open();
            cmd.CommandText = sql;
            cmd.ExecuteNonQuery();
            return "Success";

        }
        catch (Exception ex)
        {
            return ex.Message;
        }
        finally
        {
            con.Close();
        }
    }
}