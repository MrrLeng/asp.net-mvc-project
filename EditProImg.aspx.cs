using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class EditProImg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cmdCancel.Enabled = false;
            cmdUpdate.Enabled = false;
        }
    }
    protected void cmdUpdate_Click(object sender, EventArgs e)
    {
        if (imgUp.HasFile)
        {
            String imgName = imgUp.FileName;
            imgUp.SaveAs(Server.MapPath("~\\Images") + "/" + imgUp.FileName);

            SqlConnection cnn = new SqlConnection("Data Source=DESKTOP-AQKMAG5;Initial Catalog=FlowerDBTest;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Update tblFlowers Set ImgUrl=@FImgUrl Where FlowerId=@fsId", cnn);
            cmd.Parameters.Add("@fsId", System.Data.SqlDbType.NVarChar);
            cmd.Parameters["@fsId"].Value = txtId.Text;
            cmd.Parameters.Add("@FImgUrl", System.Data.SqlDbType.NVarChar);
            cmd.Parameters["@FImgUrl"].Value = "Images/" + imgName;

            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
        }
    }
    protected void cmdSearch_Click(object sender, EventArgs e)
    {
        String sId = Request.QueryString.Get("pid");
        SqlConnection cnn = new SqlConnection("Data Source=DESKTOP-AQKMAG5;Initial Catalog=FlowerDBTest;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("Select FlowerId, ImgUrl From tblFlowers Where FlowerId=@fsId", cnn);
        cmd.Parameters.Add("@fsId", System.Data.SqlDbType.NVarChar);
        cmd.Parameters["@fsId"].Value = txtId.Text;
        SqlDataReader rd;
        cnn.Open();
        rd = cmd.ExecuteReader();
        if (rd.Read() == true)
        {
            cmdCancel.Enabled = true;
            cmdUpdate.Enabled = true;
            SImgUrl.ImageUrl=rd[1].ToString();
        }
        rd.Close();
        cnn.Close();
    }

    protected void cmdCancel_Click(object sender, EventArgs e)
    {
        SImgUrl.ImageUrl = "";
        cmdCancel.Enabled = false;
        cmdUpdate.Enabled = false;
    }
}