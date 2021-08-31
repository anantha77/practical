using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class fileup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnupload_Click(object sender, EventArgs e)
    {
        if(FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(@"C:\Users\a1224\Pictures\Saved Pictures\" + FileUpload1.FileName);
            lb1.Text = "Successfully uploaded" + FileUpload1.FileName + "Content type: " + FileUpload1.PostedFile.ContentType + "length of file :" + FileUpload1.PostedFile.ContentLength;
        }
        else
        {
            lb1.Text = "No file uploaded";
        }
    }
}