using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_FileUpload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //lblMessage.Text = "Saved Sucessfully !";

        //Check For Selection Of File

        if (fuFile.HasFile)
        {
            //lblMessage.Text = "File Uploaded SucessFully - "+ fuFile.FileName.ToString().Trim();
            //lblMessage.Text = "File Uploaded SucessFully - " + fuFile.FileBytes.ToString().Trim();
            //lblMessage.Text = "File Uploaded SucessFully - " + fuFile.GetType();

            String AbsolutePath = Server.MapPath("~/AdminPanel/UserContent/");

            if (!Directory.Exists(AbsolutePath))
                Directory.CreateDirectory(AbsolutePath);
            
            fuFile.SaveAs(AbsolutePath + fuFile.FileName.ToString().Trim());
            lblMessage.Text = AbsolutePath;

        }
        else
        {
            lblMessage.Text = "File Is Not Selected";
        }
    }
    protected void btnDeleteFile_Click(object sender, EventArgs e)
    {
        String FilePath = "~/AdminPanel/UserContent/";
        FileInfo file = new FileInfo(Server.MapPath(FilePath));

        if(file.Exists)
        {
            file.Delete();
        }
        else
        {
            lblMessage.Text = "File Not Available";
        }
    }
}