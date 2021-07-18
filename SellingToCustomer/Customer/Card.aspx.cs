using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Customer_Card : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)        
    {
        TextBox2.Text = Session["customer"].ToString();
        TextBox3.Text = Session["price"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            string _ProcName = "usp_PaymentCard";
            SqlParameter[] _parameter = {
                                            new SqlParameter("@PaymentType",DropDownList1.SelectedValue),
                                            new SqlParameter("@CLoginID",TextBox2.Text),
                                            new SqlParameter("@Amount",TextBox3.Text),
                                            new SqlParameter("@CardType",DropDownList2.SelectedValue),
                                            new SqlParameter("@CardNo",TextBox5.Text),
                                            new SqlParameter("@DoE",TextBox6.Text),
                                            new SqlParameter("@BankName",TextBox7.Text),
                           
                                        };
            int index = db.ExecuteNonQueryByQueryProc(_parameter, _ProcName);
            if (index > 0)
            {
                Label1.Text = "Payment Successfull !!!";
            }
            else
            {
                Label1.Text = "Payment Unsuccessfull !!!";
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
}