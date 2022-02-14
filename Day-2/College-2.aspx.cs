using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListBox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDisplay_Click(object sender, EventArgs e)
    {


        foreach (ListItem li in lb1.Items)
            if (li.Selected == true)
            {
                lblDisplay.Text += "<Strong>" + li.Text.Trim() + "-" + li.Value.Trim() + "</Strong>" + "<br />";
            }
            else
            {
                lblDisplay.Text += li.Text.Trim() + "-" + li.Value.Trim() + "<br />";
            }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {

        ListItem li = new ListItem();
        li.Text = txt1.Text.ToString();
        li.Value = txt2.Text.ToString();
        lb1.Items.Add(li);
        lblAdded.Text = "Item Added: " + txt1.Text.ToString() + "-" + txt2.Text.ToString();

    }
    protected void btnRemove_Click(object sender, EventArgs e)
    {

        string itemText = txt1.Text.ToString();
        string itemValue = txt2.Text.ToString();
        ListItem li = new ListItem();
        li.Text = itemText;
        li.Value = itemValue;
        lb1.Items.Remove(li);
        lblAdded.Text = "Item Deleted: " + txt1.Text.ToString() + "-" + txt2.Text.ToString();


    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        if (lb1.SelectedIndex <= -1)
        {
            lblMessage.Text = "Please select Any Item";
        }
        else
        {
            lb2.Items.Add(lb1.SelectedItem);
            int i = 0;
            i = lb1.SelectedIndex;
            lb1.Items.RemoveAt(i);
        }
    }

    protected void btn3_Click(object sender, EventArgs e)
    {
        if (lb2.SelectedIndex <= -1)
        {
            lblMessage.Text = "Please select Any Item";
        }
        else
        {
            lb1.Items.Add(lb2.SelectedItem);
            int i = 0;
            i = lb2.SelectedIndex;
            lb2.Items.RemoveAt(i);
        }
    }
}