using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using signup1;


public partial class login : System.Web.UI.Page
{
    signup s1 = new signup();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btsignup_Click(object sender, EventArgs e)
    {

        //string str = ConfigurationManager.ConnectionStrings["cnstr"].ConnectionString;
        //SqlConnection con = new SqlConnection(str);

        //    con.Open();
        //SqlCommand cmd = new SqlCommand;
        s1.getdata("Insert into signup values('" + TxtBxuser.Text + "','" + Txtbxpd.Text + "','" + ddcountry.SelectedItem + "','" + ddstate.SelectedItem + "','" + RBgender.SelectedItem + "','" +Cbxqualification.Text + "')");
        //cmd.ExecuteNonQuery();


        RegisterStartupScript("s", "<script> alert ('Added Successfully....')</script>");


    }

    protected void cblgender_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void LBqualification_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ddcountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddstate.Items.Clear();
        if (ddcountry.SelectedItem.Text == "India")
        {
            ddstate.Items.Add("TamilNadu");
            ddstate.Items.Add("Karnataka");
            ddstate.Items.Add("Kerala");
        }
        if (ddcountry.SelectedItem.Text == "America")
        {
            ddstate.Items.Add("California");
            ddstate.Items.Add("San Fransico");
            ddstate.Items.Add("Florida");
            ddstate.Items.Add("Alaska");
        }


    }


    public void Cbxqualification_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str1 = " ";
        for (int i = 0; i < Cbxqualification.Items.Count; i++)
        {
            if (Cbxqualification.Items[i].Selected)
            {
                if (str1 == " ")
                {
                    str1 = Cbxqualification.Items[i].Text;
                }
                else
                {
                    str1 = " , " + Cbxqualification.Items[i].Text;
                }
            }

        }
    }
}