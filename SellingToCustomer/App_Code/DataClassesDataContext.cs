using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
/// <summary>
/// Summary description for DataClassesDataContext
/// </summary>
public class DataClassesDataContext
{
    private SqlConnection _con = null;
    private SqlCommand _cmd = null;
    private SqlDataAdapter _adapter = null;
    private SqlDataReader _reader = null;
    private DataSet ds = null;
    private void OpenConnection()
    {
        try
        {
            _con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionDB"].ConnectionString);
            _con.Open();
            _cmd = new SqlCommand();
            _cmd.Connection = _con;
        }
        catch (Exception)
        {
            throw;
        }

    }
    private void CloseConnection()
    {
        try
        {
            if (_con.State == ConnectionState.Open)
            {
                _con.Close();
            }
        }
        catch (Exception)
        {
            throw;
        }
        finally
        {
            _con.Close();
        }

    }
    public int ExecuteNonQueryByQueryProc(SqlParameter[] _Parameters, string _procedureName)
    {

        this.OpenConnection();
        SqlParameter _sqlParameter = new SqlParameter();
        _cmd.CommandType = CommandType.StoredProcedure;
        _cmd.CommandText = _procedureName;
        if (_cmd.Parameters.Count > 0)
            _cmd.Parameters.Clear();
        foreach (SqlParameter LoopVar_Param in _Parameters)
        {
            _sqlParameter = LoopVar_Param;
            _cmd.Parameters.Add(_sqlParameter);
        }
        int i = _cmd.ExecuteNonQuery();
        CloseConnection();
        return i;
    }
    public int ExecuteNonQueryByQuery(SqlParameter[] _Parameters, string _query)
    {

        this.OpenConnection();
        SqlParameter _sqlParameter = new SqlParameter();
        _cmd.CommandText = _query;
        if (_cmd.Parameters.Count > 0)
            _cmd.Parameters.Clear();
        foreach (SqlParameter LoopVar_Param in _Parameters)
        {
            _sqlParameter = LoopVar_Param;
            _cmd.Parameters.Add(_sqlParameter);
        }
        int i = _cmd.ExecuteNonQuery();
        CloseConnection();
        return i;
    }
    public DataTable GetDataTable(string _procedureName, SqlParameter[] _Parameters)
    {
        this.OpenConnection();
        DataTable _objTable = new DataTable();
        _adapter = new SqlDataAdapter();
        SqlParameter _sqlParameter = new SqlParameter();
        _cmd.CommandType = CommandType.StoredProcedure;
        _cmd.CommandText = _procedureName;
        if (_cmd.Parameters.Count > 0)
            _cmd.Parameters.Clear();
        _adapter.SelectCommand = _cmd;
        foreach (SqlParameter LoopVar_Param in _Parameters)
        {
            _sqlParameter = LoopVar_Param;
            _cmd.Parameters.Add(_sqlParameter);
        }
        _adapter.Fill(_objTable);
        this.CloseConnection();

        return _objTable;
    }
    public DataTable GetDataTableByQuery(string _procedureName)
    {
        this.OpenConnection();
        DataTable _objTable = new DataTable();
        _adapter = new SqlDataAdapter();
        _cmd.CommandType = CommandType.Text;
        _cmd.CommandText = _procedureName;
        _adapter.SelectCommand = _cmd;
        _adapter.Fill(_objTable);
        this.OpenConnection();
        return _objTable;

    }
    public SqlDataReader GetDataReaderByQuery(string _procedureName)
    {
        this.OpenConnection();

        _cmd.CommandText = _procedureName;

        _reader = _cmd.ExecuteReader(CommandBehavior.CloseConnection);
        return _reader;

    }
    public SqlDataReader GetDataReaderByProc(string _procedureName, SqlParameter[] _Parameters)
    {
        this.OpenConnection();
        SqlParameter _sqlParameter = new SqlParameter();
        _cmd.CommandType = CommandType.StoredProcedure;
        _cmd.CommandText = _procedureName;
        if (_cmd.Parameters.Count > 0)
            _cmd.Parameters.Clear();
        foreach (SqlParameter LoopVar_Param in _Parameters)
        {
            _sqlParameter = LoopVar_Param;
            _cmd.Parameters.Add(_sqlParameter);
        }
        _reader = _cmd.ExecuteReader(CommandBehavior.CloseConnection);
        return _reader;

    }
    public int ExecuteNonQueryByQuery(string _query)
    {
        this.OpenConnection();
        _cmd.CommandText = _query;
        int i = _cmd.ExecuteNonQuery();
        CloseConnection();
        return i;
    }
    public int ExecuteNonQueryByProc(string _procedureName, SqlParameter[] _Parameters)
    {
        this.OpenConnection();
        SqlParameter _sqlParameter = new SqlParameter();
        _cmd.CommandType = CommandType.StoredProcedure;
        _cmd.CommandText = _procedureName;
        if (_cmd.Parameters.Count > 0)
            _cmd.Parameters.Clear();
        foreach (SqlParameter LoopVar_Param in _Parameters)
        {
            _sqlParameter = LoopVar_Param;
            _cmd.Parameters.Add(_sqlParameter);
        }
        int i = _cmd.ExecuteNonQuery();
        CloseConnection();
        return i;
    }
    public int InsertUpdateByQuery(string strQry)
    {
        this.OpenConnection();
        SqlParameter _sqlParameter = new SqlParameter();
        _cmd.CommandType = CommandType.Text;
        _cmd.CommandText = strQry;
        int i = _cmd.ExecuteNonQuery();
        CloseConnection();
        return i;
    }
    public bool IsExist(string _procedureName, SqlParameter[] _Parameters)
    {
        this.OpenConnection();
        SqlParameter _sqlParameter = new SqlParameter();
        _cmd.CommandType = CommandType.StoredProcedure;
        _cmd.CommandText = _procedureName;
        if (_cmd.Parameters.Count > 0)
            _cmd.Parameters.Clear();
        foreach (SqlParameter LoopVar_Param in _Parameters)
        {
            _sqlParameter = LoopVar_Param;
            _cmd.Parameters.Add(_sqlParameter);
        }
        int IsExistCheck = Convert.ToInt32(_cmd.ExecuteScalar());
        if (IsExistCheck > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    public int Return_Parameter_NonExecuteQuery(string _procedureName, SqlParameter[] _Parameters, SqlParameter[] _Outputparameter)
    {
        this.OpenConnection();
        SqlParameter _sqlParameter = new SqlParameter();
        SqlParameter _sqlOutputParameter = new SqlParameter();
        _cmd.CommandType = CommandType.StoredProcedure;
        _cmd.CommandText = _procedureName;
        if (_cmd.Parameters.Count > 0)
            _cmd.Parameters.Clear();
        foreach (SqlParameter LoopVar_Param in _Parameters)
        {
            _sqlParameter = LoopVar_Param;
            _cmd.Parameters.Add(_sqlParameter);
        }
        foreach (SqlParameter LoopVar_Param in _Outputparameter)
        {
            _sqlOutputParameter = LoopVar_Param;
            _cmd.Parameters.Add(_sqlOutputParameter);
            _cmd.Parameters[_sqlOutputParameter.ParameterName].Direction = ParameterDirection.Output;
        }
        _cmd.ExecuteNonQuery();
        int returnresult = Convert.ToInt32(_cmd.Parameters[_sqlOutputParameter.ParameterName].Value);
        return returnresult;
    }
    public DataSet Get_DataSet(string strQry)
    {
        _adapter = new SqlDataAdapter(strQry, _con);
        ds = new DataSet();
        _adapter.Fill(ds);
        return ds;
    }
    public void sbNotBackToLogin(int n, string lcPage)
    {
        if (n == 1)
        {
            string nextpage = lcPage;
            HttpContext.Current.Response.Write("<SCRIPT LANGUAGE=javascript>");
            HttpContext.Current.Response.Write("{");
            HttpContext.Current.Response.Write(" var Backlen=history.length;");
            HttpContext.Current.Response.Write(" history.go(+Backlen);");
            HttpContext.Current.Response.Write(" window.location.href='" + nextpage + "';");
            HttpContext.Current.Response.Write("}");
            HttpContext.Current.Response.Write("</SCRIPT>");
        }
    }
    public void sbLogout(int n, string lcPage)
    {
        if (n == 1)
        {
            string nextpage = lcPage;
            HttpContext.Current.Response.Write("<SCRIPT LANGUAGE=javascript>");
            HttpContext.Current.Response.Write("{");
            HttpContext.Current.Response.Write(" var Backlen=history.length;");
            HttpContext.Current.Response.Write(" history.go(+Backlen);");
            HttpContext.Current.Response.Write(" window.location.href='" + nextpage + "';");
            HttpContext.Current.Response.Write("}");
            HttpContext.Current.Response.Write("</SCRIPT>");
        }
    }
    public string ExecuteScalerByQuery(string _query)
    {
        try
        {
            this.OpenConnection();
            _cmd.CommandText = _query;
            string i = _cmd.ExecuteScalar().ToString();
            CloseConnection();
            return i;
        }
        catch (Exception ex)
        {
            return "0";
        }
    }


}