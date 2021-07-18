using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_MakePayment2 : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["pid"] != null)
        {
            var pid = Request.QueryString["pid"].ToString();
            try
            {
                Session["price"] = TextBox3.Text;
                string _ProcName = "usp_GetProducts2";
                SqlParameter[] _parameter = {
                         
                           new SqlParameter("@Pid",pid)
                                        
                                        };
                SqlDataReader dr = db.GetDataReaderByProc(_ProcName, _parameter);
                dr.Read();
                if (dr.HasRows)
                {
                    Label1.Text = dr["DesignId"].ToString();
                    Label2.Text = dr["DesignCategory"].ToString();
                    Label3.Text = dr["Price"].ToString();


                    dr.Dispose();

                }
                else
                    Label4.Text = "payment unsuccessul due to some reason";

            }
            catch (Exception ex)
            {
                Label4.Text = ex.Message;
            }

        }
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        double a = Convert.ToDouble(Label3.Text);
        int b = Convert.ToInt32(TextBox2.Text);
        double total = a * b;
        TextBox3.Text = total.ToString();
    }
    protected void btnPaySubmit_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Customer/Card.aspx");
    }
}