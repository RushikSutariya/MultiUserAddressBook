using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class List_Control : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnCountry_Click(object sender, EventArgs e)
    {
        //1- It Show The Value 
        //lblMessage.Text = ddlCountry.SelectedValue;

        //2-it Show The SelectedItem Text
        //lblMessage.Text = "You Have Selected" + " " + ddlCountry.SelectedItem.Text;

        //3- It Show The SelectedItem Index
        //lblMessage.Text = ddlCountry.SelectedIndex.ToString().Trim();

        // 4- all property are merged
        //lblMessage.Text = ddlCountry.SelectedIndex.ToString().Trim() + " - " + ddlCountry.SelectedItem.Text + " - " + ddlCountry.SelectedValue;



        foreach (ListItem li in lblMessageListBox1.Items)
        {
            if(li.Selected){
                lblMessage.Text += "<strong>" + li.Value.Trim() + " - " + li.Text.Trim() + " </strong> <br /> ";
            }
            else { 
            lblMessage.Text += li.Value.Trim() + " - " + li.Text.Trim() + " <br /> ";
            }
        }
    }
    protected void btnAddItem_Click(object sender, EventArgs e)
    {
        if (lblMessageListBox1.Items.Contains(new ListItem(txtCountryName.Text.Trim(), txtCountryCode.Text.Trim())) == true)
        {
            lblMessageListBox1.Text = "Country already Added.";
        }
        else
        {
            lblMessageListBox1  .Items.Add(new ListItem(txtCountryName.Text.Trim(), txtCountryCode.Text.Trim()));
        }
        txtCountryName.Text = "";
        txtCountryCode.Text = "";
        txtOldCountryName.Text = "";
        txtOldCountryCode.Text = "";
    }
    protected void btnRemoveItem_Click(object sender, EventArgs e)
    {
        if (lblMessageListBox1.Items.Contains(new ListItem(txtCountryName.Text.Trim(), txtCountryCode.Text.Trim())) == true)
        {
            lblMessageListBox1.Items.Remove(new ListItem(txtCountryName.Text.Trim(), txtCountryCode.Text.Trim()));
        }
        else
        {
            lblMessage.Text = "Item Not Available.";
        }
        txtCountryName.Text = "";
        txtCountryCode.Text = "";
        txtOldCountryName.Text = "";
        txtOldCountryCode.Text = "";
    }
    protected void btnLeft_Click(object sender, EventArgs e)
    {
        if (lblMessageListBox1.SelectedIndex <= -1)
        {
            lblMessage.Text = "Please select Any Item";
        }
        else
        {
            lblMessageListBox2.Items.Add(lblMessageListBox1.SelectedItem);
            int i = 0;
            i = lblMessageListBox1.SelectedIndex;
            lblMessageListBox1.Items.RemoveAt(i);
        }
    }
    protected void btnLeftAll_Click(object sender, EventArgs e)
    {
      
        while (lblMessageListBox1.Items.Count != 0)
        {
            for (int i = 0; i < lblMessageListBox1.Items.Count; i++)
            {
                lblMessageListBox2.Items.Add(lblMessageListBox1.Items[i]);
                lblMessageListBox1.Items.Remove(lblMessageListBox1.Items[i]);
            }
        }  
    }
    protected void btnRightAll_Click(object sender, EventArgs e)
    {
        while (lblMessageListBox2.Items.Count != 0)
        {
            for (int i = 0; i < lblMessageListBox2.Items.Count; i++)
            {
                lblMessageListBox1.Items.Add(lblMessageListBox2.Items[i]);
                lblMessageListBox2.Items.Remove(lblMessageListBox2.Items[i]);
            }
        }  
    }
    protected void btnRight_Click(object sender, EventArgs e)
    {
        if (lblMessageListBox2.SelectedIndex <= -1)
        {
            lblMessage.Text = "Please select Any Item";
        }
        else
        {
            lblMessageListBox1.Items.Add(lblMessageListBox2.SelectedItem);
            int i = 0;
            i = lblMessageListBox2.SelectedIndex;
            lblMessageListBox2.Items.RemoveAt(i);
        }
    
    }

    protected void lblMessageListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void btnUpdateItem_Click(object sender, EventArgs e)
    {
        if (lblMessageListBox1.Items.Contains(new ListItem(txtOldCountryName.Text.Trim(), txtOldCountryCode.Text.Trim())) == true)
        {
            lblMessageListBox1.Items.Remove(new ListItem(txtOldCountryName.Text.Trim(), txtOldCountryCode.Text.Trim()));
            lblMessageListBox1.Items.Add(new ListItem(txtCountryName.Text.Trim(), txtCountryCode.Text.Trim()));
        }
        else
        {
            lblMessage.Text = "Item Is not Available";
        }
    }
}