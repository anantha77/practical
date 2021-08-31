using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using bl;

public partial class employee : System.Web.UI.Page
{
    BL b = new BL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if((!IsPostBack) && Cache["mydataset"]== null)
        {
            int a = System.DateTime.Now.Millisecond;
            string val = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(val);
            SqlCommand cmd = new SqlCommand("select * from emp_de", con);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            Cache["mydataset"] = ds;
            Cache.Insert("mydataset", ds, null, DateTime.Now.AddMinutes(1),TimeSpan.Zero);
            Label1.Text = "From database";
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            int b = System.DateTime.Now.Millisecond;
            Response.Write(b - a);
        }
        else
        {
            int a = System.DateTime.Now.Millisecond;
            DataSet ds = new DataSet();
            ds = (DataSet)Cache["mydataset"];
            Label1.Text = "From Cache";
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            int b = System.DateTime.Now.Millisecond;
            Response.Write(b - a);

        }
    }

    protected void tbeid_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btadd_Click(object sender, EventArgs e)
    {
        b.executequery("Insert into emp_de values(" + tbeid.Text + ",'" + tbename.Text + "')");
        //string str = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        //SqlConnection con = new SqlConnection(str);
        //con.Open();
        //SqlCommand cmd = new SqlCommand("Insert into emp_de values(" + tbeid.Text + ",'" + tbename.Text + "')", con);
        //cmd.ExecuteNonQuery();
        RegisterStartupScript("s ", "<script> alert ('Added Successfully')</script>");
    }

    protected void btedit_Click(object sender, EventArgs e)
    {
        string str = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        con.Open();
        SqlCommand cmd = new SqlCommand("update emp_de set enme='"+tbename.Text+"'where eid='"+tbeid.Text+"'",con);// ("Insert into emp_de values(" + tbeid.Text + ",'" + tbename.Text + "')", con);
        cmd.ExecuteNonQuery();
        RegisterStartupScript("s ", "<script> alert ('Updated Successfully')</script>");
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btview_Click(object sender, EventArgs e)
    {
        DataSet ds = b.display("select * from emp_de");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

        //string str = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        //SqlConnection con = new SqlConnection(str);
        //con.Open();
        //SqlCommand cmd = new SqlCommand("select * from emp_de", con);
        //SqlDataAdapter ad = new SqlDataAdapter(cmd);
        //DataSet ds = new DataSet();
        //ad.Fill(ds);
        //GridView1.DataSource = ds;
        //GridView1.DataBind();
    }
}