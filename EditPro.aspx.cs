using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class EditPro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cmdCancel.Enabled = false;
            cmdDelete.Enabled = false;
            cmdUpdate.Enabled = false;
            txtName.Enabled = false;
            txtPrice.Enabled = false;
            drpType.Enabled = false;
            FlDes.Enabled = false;
        }
    }
    protected void cmdUpdate_Click(object sender, EventArgs e)
    {
        String sId = Request.QueryString.Get("pid");
        SqlConnection cnn = new SqlConnection("Data Source=DESKTOP-AQKMAG5;Initial Catalog=FlowerDBTest;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("Update tblFlowers Set FlowerName=@FName, FlowerTypeId=@FTId, FlowerPrice=@FPrice, FlowerDes=@FDes Where FlowerId=@fsId", cnn);
        cmd.Parameters.Add("@fsId", System.Data.SqlDbType.NVarChar);
        cmd.Parameters["@fsId"].Value = txtId.Text;
        cmd.Parameters.Add("@FName", System.Data.SqlDbType.NVarChar);
        cmd.Parameters["@FName"].Value = txtName.Text;
        cmd.Parameters.Add("@FTId", System.Data.SqlDbType.Int);
        cmd.Parameters["@FTId"].Value = drpType.SelectedValue;
        cmd.Parameters.Add("@FPrice", System.Data.SqlDbType.Float);
        cmd.Parameters["@FPrice"].Value = txtPrice.Text;
        cmd.Parameters.Add("@FDes", System.Data.SqlDbType.NVarChar);
        cmd.Parameters["@FDes"].Value = FlDes.Text;
        cnn.Open();
        cmd.ExecuteNonQuery();
        cnn.Close();
    }
    protected void cmdDelete_Click(object sender, EventArgs e)
    {
        String sId = Request.QueryString.Get("pid");
        SqlConnection cnn = new SqlConnection("Data Source=DESKTOP-AQKMAG5;Initial Catalog=FlowerDBTest;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("Delete tblFlowers Where FlowerId=@fsId", cnn);
        cmd.Parameters.Add("@fsId", System.Data.SqlDbType.NVarChar);
        cmd.Parameters["@fsId"].Value = txtId.Text; ;
 
        cnn.Open();
        cmd.ExecuteNonQuery();
        cnn.Close();
    }

    protected void cmdCancel_Click(object sender, EventArgs e)
    {
        txtId.Text = "";
        txtName.Text = "";
        txtPrice.Text = "";
        FlDes.Text = "";
        cmdCancel.Enabled = false;
        cmdDelete.Enabled = false;
        cmdUpdate.Enabled = false;
        txtName.Enabled = false;
        txtPrice.Enabled = false;
        drpType.Enabled = false;
        FlDes.Enabled = false;
    }

    protected void cmdSearch_Click(object sender, EventArgs e)
    {
        String sId = Request.QueryString.Get("pid");
        SqlConnection cnn = new SqlConnection("Data Source=DESKTOP-AQKMAG5;Initial Catalog=FlowerDBTest;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("Select * From tblFlowers Where FlowerId=@fsId", cnn);
        cmd.Parameters.Add("@fsId", System.Data.SqlDbType.NVarChar);
        cmd.Parameters["@fsId"].Value = txtId.Text;
        SqlDataReader rd;
        cnn.Open();
        rd = cmd.ExecuteReader();
        if (rd.Read()==true){
            cmdCancel.Enabled = true;
            cmdDelete.Enabled = true;
            cmdUpdate.Enabled = true;
            txtName.Enabled = true;
            txtPrice.Enabled = true;
            drpType.Enabled = true;
            FlDes.Enabled = true;

            txtId.Text = rd[0].ToString();
            txtName.Text = rd[1].ToString();
            txtPrice.Text=rd[3].ToString();
            FlDes.Text = rd[4].ToString();

        }
        rd.Close();
        cnn.Close();
    }
}