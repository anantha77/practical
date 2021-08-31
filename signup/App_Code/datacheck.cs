using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;



namespace loginpage1
{
    public class datacheck
    {
        public SqlDataReader display(string str)
        {
            string val = ConfigurationManager.ConnectionStrings["cnstr"].ConnectionString;
            SqlConnection con = new SqlConnection(val);
            SqlCommand cmd = new SqlCommand(str,con);
            try
            {
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                return rd;

            }
            catch (Exception ex)
            {
              
                throw ex;
            }
            

            //
            // TODO: Add constructor logic here
            //
        }
    }
}