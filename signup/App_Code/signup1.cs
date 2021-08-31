using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for signup1
/// </summary>
namespace signup1
{
    public class signup
    {
        public void getdata(string str)
        {
            string val = ConfigurationManager.ConnectionStrings["cnstr"].ConnectionString;
            SqlConnection con = new SqlConnection(val);


            //con.Open();
            SqlCommand cmd = new SqlCommand(str,con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                cmd.Dispose();
                con.Dispose();
            }
            //
            // TODO: Add constructor logic here
            //
        }
    }
}