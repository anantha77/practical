using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using loginpage1;

public partial class loginpage : System.Web.UI.Page
{
    datacheck dc=new datacheck();
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btlogin_Click(object sender, EventArgs e)
    {
        SqlDataReader sd = dc.display("select * from signup where username='"+Txbxuser.Text+"' and password='"+Txtbxpd.Text+"'");

        //string str = ConfigurationManager.ConnectionStrings["cnstr"].ConnectionString;
        //SqlConnection con = new SqlConnection(str);
        //con.Open();
        //SqlCommand cmd = new SqlCommand("select * from signup where username ='" + Txbxuser.Text + "'and password='" + Txtbxpd.Text + "'", con);//"Insert into signup values('" + Txbxuser.Text + "','" + Txtbxpd.Text + "','" + ddcountry.SelectedItem + "','" + ddstate.SelectedItem + "','" + RBgender.SelectedItem + "','" + LBqualification.SelectedItem + "')", con);
        //SqlDataReader rd = cmd.ExecuteReader();
        if (sd.HasRows) 
        {
            
                lbldisplay.Text = "Login successfull";
                Response.Redirect("home.aspx"); 
        }
        else
        {
            //lbldisplay.Text;
            RegisterStartupScript("s", "<script> alert ('Invalid Usernamae & Password ....Please try again')</script>");

        }
        //cmd.ExecuteNonQuery();
    }

    protected void Btnewur_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}