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

public partial class AdminPanel_ContactCategory_ContactCategoryAddEdit : System.Web.UI.Page
{
    #region Load Event
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Request.QueryString["ContactCategoryID"] != null)
            {
                //lblMeassage.Text = "Edit Mode | ContactCategoryID= " + Request.QueryString["ContactCategoryID"].ToString();
                FillControls(Convert.ToInt32(DropDownFillMethods.Base64decode(Request.QueryString["ContactCategoryID"].ToString().Trim())));

            }
            else
            {
                //lblMeassage.Text = "Add Mode";
            }
        }
    }

    #endregion Load Event

    #region ContactCategorySave Event
    protected void btnContactCategorySave_Click(object sender, EventArgs e)
    {
        #region Local Variable
        SqlString strContactCategoryName = SqlString.Null;
        #endregion Local Variable

        #region Server Side Validation

        string strErrorMessage = "";

        if (txtContactCategoryName.Text.Trim() == "")
            strErrorMessage += "-Please Enter The ContatCategory Name";
        
        if (strErrorMessage != "")
        {
            lblMeassage.Text = strErrorMessage;
            return;
        }

        #endregion #region Server Side Validation

        #region Gather The Information
        
        if (txtContactCategoryName.Text.Trim() != "")
            strContactCategoryName = txtContactCategoryName.Text.Trim();


        #endregion  Gather The Information

        #region Set The Connection And Command Object
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["AddressBookConnectionString"].ConnectionString);
        try
        {
            if (objConn.State != ConnectionState.Open)
                objConn.Open();

            SqlCommand objCmd = objConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.Parameters.AddWithValue("@ContactCategoryName", strContactCategoryName);
            objCmd.Parameters.AddWithValue("UserID", Session["UserID"]);

            if (DropDownFillMethods.Base64decode(Request.QueryString["ContactCategoryID"].ToString().Trim()) != null)
            {
                #region Update Record
                objCmd.Parameters.AddWithValue("ContactCategoryID", Convert.ToInt32(DropDownFillMethods.Base64decode(Request.QueryString["ContactCategoryID"].ToString().Trim())));
                objCmd.CommandText = "PR_ContactCategory_UpdateByUserIDContactCategoryID";
                objCmd.ExecuteNonQuery();
                //Response.Redirect("~/AdminPanel/ContactCategory/ContactCategoryList.aspx");
                Response.Redirect("~/AdminPanel/ContactCategory/List");
                lblMeassage.Text = "Data Updated Successfully";               
                #endregion Update Record

            }
            else
            {
                #region Insert Record
                objCmd.CommandText = "PR_ContactCategory_Insert";
                objCmd.ExecuteNonQuery();
                //Response.Redirect("~/AdminPanel/ContactCategory/ContactCategoryList.aspx");
                Response.Redirect("~/AdminPanel/ContactCategory/List");
                lblMeassage.Text = "Data Inserted SuccessFully";
                txtContactCategoryName.Text = "";
                txtContactCategoryName.Focus();
                #endregion Insert Record

            }

            if (objConn.State == ConnectionState.Open)
                objConn.Close();
        }
        #endregion Set The Connection And Command Object
        catch (Exception ex)
        {
            lblMeassage.Text = ex.Message;
        }
        finally
        {
            if (objConn.State == ConnectionState.Open)
                objConn.Close();
        }
    }

    #endregion ContactCategorySave Event

    #region FillControls
    private void FillControls(SqlInt32 ContactCategoryID)
    {
        #region Local Variables
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["AddressBookConnectionString"].ConnectionString.Trim());
        #endregion Local Variables
        try
        {
            #region Set Connection & Command Object
            if (objConn.State != ConnectionState.Open)
                objConn.Open();

            SqlCommand objCmd = objConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "PR_ContactCategory_SelectByUserIDContactCategoryID";
            objCmd.Parameters.AddWithValue("@ContactCategoryID", ContactCategoryID.ToString().Trim());
            objCmd.Parameters.AddWithValue("UserID", Session["UserID"]);
            #endregion Set Connection & Command Object

            #region Read the Value and set the controls

            SqlDataReader objSDR = objCmd.ExecuteReader();

            if (objSDR.HasRows)
            {
                while (objSDR.Read())
                {
                    if (objSDR["ContactCategoryName"].Equals(DBNull.Value) != true)
                    //if(!objSDR["StateName"].Equals(DBNull.Value))      
                    {
                        txtContactCategoryName.Text = objSDR["ContactCategoryName"].ToString().Trim();
                    }
                    break;
                }
            }
            else
            {
                lblMeassage.Text = "No Data available for the StateID" + ContactCategoryID.ToString();
            }
            #endregion Read the Value and set the controls
        }
        catch (Exception ex)
        {
            lblMeassage.Text = ex.Message;
        }
        finally
        {
            if (objConn.State == ConnectionState.Open)
                objConn.Close();
        }

    }

    #endregion FillControls

    #region Cancle Event
    protected void btnCancle_Click(object sender, EventArgs e)
    {
        //Response.Redirect("~/AdminPanel/ContactCategory/ContactCategoryList.aspx", true);
        Response.Redirect("~/AdminPanel/ContactCategory/List");
    }

    #endregion Cancle Event
}