using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class CompanyRegistration : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        try
        {
            string _ProcName = "usp_SetRegisterDataC";
            SqlParameter[] _parameter = {
                          new SqlParameter("@CompanyID",""),
                           new SqlParameter("@CompanyName",txtCompanyName.Text),
                           new SqlParameter("@LoginID",txtLoginID.Text),
                            new SqlParameter("@Password",txtPassword.Text),
                            new SqlParameter("@CompanyAddress",txtCompanyAddress.Text),
                            new SqlParameter("@Contact",txtContact.Text),
                             new SqlParameter("@EmailID",txtEmailID.Text),
                             new SqlParameter("@FaxNo",""),
                             new SqlParameter("@Country",txtCountry.Text),
                             new SqlParameter("@State",DropDownListState.SelectedValue),
                             new SqlParameter("@PIN",txtPIN.Text),
                             new SqlParameter("@ROLE","1")
                                        };
            int index = db.ExecuteNonQueryByQueryProc(_parameter, _ProcName);
            if (index > 0)
            {
                lblMessage.Text = "Registration Successfull!!!";
            }
            else
            {
                lblMessage.Text = "Registration Unsuccessfull!!!";
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
}
