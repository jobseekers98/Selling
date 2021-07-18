using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class DesignerRegistration : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        try
        {
            string _ProcName = "usp_SetRegisterDataD";
            SqlParameter[] _parameter = {
                        
                           new SqlParameter("@Name",txtName.Text),
                           new SqlParameter("@LoginID",txtLoginID.Text),
                           new SqlParameter("@Password",txtPassword.Text),
                           new SqlParameter("@Gender",RadioButtonList1.SelectedValue),
                            new SqlParameter("@EmailID",txtEmailID.Text),
                            new SqlParameter("@Address",txtAddress.Text),
                            new SqlParameter("@Contact",Convert.ToInt64(txtContact.Text)),
                             new SqlParameter("@City",DropDownListCity.SelectedValue),
                             new SqlParameter("@State",DropDownListCity.SelectedValue),
                             new SqlParameter("@PIN",txtPIN.Text),
                             new SqlParameter("@ROLE","0")
                                        };
            int index = db.ExecuteNonQueryByQueryProc(_parameter, _ProcName);
            if (index > 0)
            {
                lblMessage.Text = "Insert successfull";
            }
            else
            {
                lblMessage.Text = "Insert Failed";
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
}