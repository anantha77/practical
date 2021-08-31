using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
public partial class spconexamples : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        string val = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(val);
        SqlCommand cmd = new SqlCommand("spInsert", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@eid", Txtbxeid.Text);
        cmd.Parameters.AddWithValue("@enme", Txtbxename.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        Response.Write("Added");

    }

    protected void btnview_Click(object sender, EventArgs e)
    {
        string val = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(val);
        SqlCommand cmd = new SqlCommand("spadd1", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@eid", Txtbxeid.Text);
        cmd.Parameters.AddWithValue("@enme", Txtbxename.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        Response.Write("updated");
    }
}