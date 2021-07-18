using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Designer_UploadDesigns : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDesignSelect_Click(object sender, EventArgs e)
    {
        if (DropDownListDesigns.Text == "Staples")
        {
            Response.Redirect("~/Store/uploadStaples.aspx");
        }
        else if (DropDownListDesigns.Text == "Snakes & Baverages")
        {
            Response.Redirect("~/Store/UploadSnakes.aspx");
        }
        else if (DropDownListDesigns.Text == "Packaged Food")
        {
            Response.Redirect("~/Store/UploadPackaged.aspx");
        }
        else if (DropDownListDesigns.Text == "Dairy & Eggs")
        {
            Response.Redirect("~/Store/UploadDairy.aspx");
        }
        else if (DropDownListDesigns.Text == "Other")
        {
            Response.Redirect("~/Store/UploadOther.aspx");
        }
        else
            Label1.Text = "select a Category";
    }
}