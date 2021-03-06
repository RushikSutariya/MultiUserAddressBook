using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_Contact_ContactList : System.Web.UI.Page
{
    #region Load Event
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            FillGridView();
        }
    }

    #endregion Load Event

    #region FillGridView
    private void FillGridView()
    {
        #region Set The Connetion And Command Object
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["AddressBookConnectionString"].ConnectionString);
        try
        {
            objConn.Open();

            SqlCommand objcmd = new SqlCommand();
            objcmd.Connection = objConn;
            objcmd.CommandType = CommandType.StoredProcedure;
            objcmd.CommandText = "PR_Contact_SelectAll";
            SqlDataReader objSDR = objcmd.ExecuteReader();
            gvContact.DataSource = objSDR;
            gvContact.DataBind();

            objConn.Close();
        }
        #endregion Set The Connetion And Command Object
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
        finally
        {
            objConn.Close();
        }
    }

    #endregion FillGridView
 
    #region gvContact RowCommand
    protected void gvContact_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        String strPath = "";

        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["AddressBookConnectionString"].ConnectionString);
        objConn.Open();

        SqlCommand obj = objConn.CreateCommand();
        obj.CommandType = CommandType.StoredProcedure;
        obj.CommandText = "PR_Contact_ContactPhoto";
        obj.Parameters.AddWithValue("@ContactID", e.CommandArgument.ToString().Trim());
        SqlDataReader objSDR = obj.ExecuteReader();

        while(objSDR.Read())
        {
            strPath = objSDR["FilePath"].ToString().Trim();
        }

        FileInfo file = new FileInfo(Server.MapPath(strPath));
        if(file.Exists)
        {
            file.Delete();
        }
        objConn.Close();
        #region Delete Record
        if (e.CommandName == "DeleteRecord")
        {
            if (e.CommandArgument.ToString() != "")
            {
                DeleteRecord(Convert.ToInt32(e.CommandArgument.ToString().Trim()));
            }
        }
        #endregion Delete Record
    }

    #endregion gvContact RowCommand

    #region DeleteRecord

    private void DeleteRecord(SqlInt32 ContactID)
    {
        #region Set The Connection And Command Object
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["AddressBookConnectionString"].ConnectionString.Trim());
        try
        {
            objConn.Open();

            SqlCommand objCmd = objConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "PR_Contact_DeleteByPK";
            objCmd.Parameters.AddWithValue("ContactID", ContactID.ToString());
            objCmd.ExecuteNonQuery();

            objConn.Close();

            FillGridView();
        }
        #endregion Set The Connection And Command Object
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
        finally
        {
            objConn.Close();
        }
    }

    #endregion DeleteRecord
}