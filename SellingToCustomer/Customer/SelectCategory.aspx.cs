using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_SelectDesignCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnDesignSelect_Click(object sender, EventArgs e)
    {
        if (DropDownListDesigns.Text == "Staples")
        {
            Response.Redirect("~/Customer/uploadStaples.aspx");
        }
        else if (DropDownListDesigns.Text == "Snakes & Baverages")
        {
            Response.Redirect("~/Customer/Snakes.aspx");
        }
        else if (DropDownListDesigns.Text == "Packaged Food")
        {
            Response.Redirect("~/Customer/Packaged.aspx");
        }
        else if (DropDownListDesigns.Text == "Dairy & Eggs")
        {
            Response.Redirect("~/Customer/Dairy.aspx");
        }
        else if (DropDownListDesigns.Text == "Other")
        {
            Response.Redirect("~/Customer/Other.aspx");
        }
        else
            Label1.Text = "select a Category";
    } 
   
}