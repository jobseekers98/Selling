using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Designer_checkeligibility : System.Web.UI.Page
{
    DataClassesDataContext db=new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Store/HomeD.aspx");
    }

    protected void btnCheckEligibility_Click(object sender, EventArgs e)
    {
         try
        {

            string _ProcName = "usp_chkEligiblity";
            SqlParameter[] _parameter = {
                         
                           new SqlParameter("@LoginID",txtCheckEligibility.Text)
                                        
                                        };
            SqlDataReader dr = db.GetDataReaderByProc(_ProcName, _parameter);
            dr.Read();
            if (dr.HasRows)
            {
                Response.Redirect("~/Store/GroceryCategory.aspx");
                dr.Dispose();
            }
            else
               Label1.Text = "You are not eligible, just get outta of here";
            
        }
         catch (Exception ex)
         {
             Label1.Text = ex.Message;
         }
    }
}