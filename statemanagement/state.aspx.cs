using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class state : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnalter_Click(object sender, EventArgs e)
    {
       ViewState["Calendar1"] = System.Drawing.Color.BlueViolet;
        string Calendar1 = (string)ViewState["Calendar1"];

    }
}