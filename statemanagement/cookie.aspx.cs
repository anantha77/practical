using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cookie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["a"] != null)
        {
            Response.Write("ur last page at" + Request.Cookies["a"].Value);
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpCookie ck = new HttpCookie("a");
        ck.Value = DateTime.Now.ToString();
        Response.Cookies.Add(ck);
    }
}