using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
           
            string _ProcName = "usp_PlayerLogin";
            SqlParameter[] _parameter = {
                         
                           new SqlParameter("@LoginID",txtlogin.Text),
                           new SqlParameter("@Password",txtPassword.Text)
                                        
                                        };
            SqlDataReader dr = db.GetDataReaderByProc(_ProcName, _parameter);
            dr.Read();
            if (dr.HasRows)
            {
                if (dr["ROLE"].ToString().Equals("10"))
                {
                    Session["admin"] = txtlogin.Text;
                    Response.Redirect("~/Admin/HomeA.aspx");
                }
                else if (dr["ROLE"].ToString().Equals("1"))
                {
                    Session["customer"] = txtlogin.Text;
                    Response.Redirect("~/Customer/HomeC.aspx");
                }
                else if (dr["ROLE"].ToString().Equals("0"))
                {
                    Session["designer"] = txtlogin.Text;
                    Response.Redirect("~/Store/HomeD.aspx");
                }
                dr.Dispose();

            }
            else
                lblLogin0.Text = "login unsccessfull";

        }
        catch (Exception ex)
        {
            lblLogin.Text = ex.Message;
        }
    }
}