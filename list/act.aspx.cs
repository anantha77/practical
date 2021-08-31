using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class act : System.Web.UI.Page
{
    public string s1;
    int sindex;
    protected void Page_Load(object sender, EventArgs e)
    {
     
    }

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        s1 = ListBox1.SelectedItem.ToString();
        sindex = ListBox1.SelectedIndex;
        ListBox2.Items.Add(s1);
        
        if (ListBox1!=null)
        {
            ListBox1.Items.RemoveAt(sindex);
        }
    }

    protected void btn2_Click(object sender, EventArgs e)
    {
        s1 = ListBox2.SelectedItem.ToString();

        sindex = ListBox2.SelectedIndex;
        ListBox1.Items.Add(s1);
        if (ListBox2 != null)
        {
            ListBox2.Items.RemoveAt(sindex);
        }
        //string s = "";
        //for (int i = 0; i < ListBox2.Items.Count; i++)
        //{
        //    if (ListBox2.Items[i].Selected)
        //    {
        //        s = s +ListBox1.Items[i].Text;
        //    } 
        //}
        //ListBox1.Text = s;
    }
}