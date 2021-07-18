using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ManageDesigns : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDesignSelect_Click(object sender, EventArgs e)
    {
        if (DropDownListDesigns.Text == "Staples")
        {
            Response.Redirect("~/Admin/Staples.aspx");
        }
        else if (DropDownListDesigns.Text == "Packaged")
        {
            Response.Redirect("~/Admin/Packaged.aspx");
        }
        else if (DropDownListDesigns.Text == "Dairy")
        {
            Response.Redirect("~/Admin/Dairy.aspx");
        }
        //else if (DropDownListDesigns.Text == "Kids Design")
        //{
        //    Response.Redirect("~/Admin/KidsDesign.aspx");
        //}
        else if (DropDownListDesigns.Text == "Other")
        {
            Response.Redirect("~/Admin/Other.aspx");
        }

        else
        {
            Label1.Text = "select a category";
        }
    }
}