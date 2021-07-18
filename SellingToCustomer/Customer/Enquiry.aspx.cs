using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_Enquiry : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Session["customer"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         try
        {

            string _ProcName = "usp_Query";
            SqlParameter[] _parameter = {
                                            new SqlParameter("@LoginID",TextBox1.Text),
                                            new SqlParameter("@Query",TextBox2.Text),
                                          
                           
                                        };
            int index = db.ExecuteNonQueryByQueryProc(_parameter, _ProcName);
            if (index > 0)
            {
                Label1.Text = "Query send!!!";
            }
            else
            {
                Label1.Text = "Query send fail!!!";
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    
    }
}