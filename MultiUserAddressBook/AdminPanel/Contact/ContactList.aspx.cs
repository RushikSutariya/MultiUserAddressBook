    using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
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
            objcmd.CommandText = "PR_Contact_SelectAllByUserID";
            objcmd.Parameters.AddWithValue("UserID", Session["UserID"]);
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
            objCmd.CommandText = "PR_Contact_DeleteByUserIDContactID";
            objCmd.Parameters.AddWithValue("ContactID", ContactID.ToString());
            objCmd.Parameters.AddWithValue("UserID", Session["UserID"]);
            objCmd.ExecuteNonQuery();

            objConn.Close();
            lblMessage2.Text = "Data Deleted Successfully";
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