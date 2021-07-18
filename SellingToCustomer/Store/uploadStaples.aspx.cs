using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Designer_upload_Design_BridalDress : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = "Staples";
    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        var fpath = "~\\DesignsUploaded\\" + FileUpload1.FileName;
        if (FileUpload1.HasFile)
        {
            FileUpload1.PostedFile.SaveAs(Server.MapPath(fpath));
        }
        try
        {
            string _ProcName = "usp_UploadBridalDesign";
            SqlParameter[] _parameter = {
                        
                           new SqlParameter("@DesignCategory",TextBox1.Text),
                           new SqlParameter("@DesignerLoginID",TextBox2.Text),
                           new SqlParameter("@DoU",TextBox3.Text),
                           new SqlParameter("@Price",TextBox4.Text),
                           new SqlParameter("@Pic",fpath),
                           
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