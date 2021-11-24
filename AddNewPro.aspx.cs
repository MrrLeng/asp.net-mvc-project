using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AddNewPro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cmdAdd_Click(object sender, EventArgs e)
    {
        if (imgUp.HasFile)
        {
            String imgName = imgUp.FileName;
            imgUp.SaveAs(Server.MapPath("~\\Images") + "/" + imgUp.FileName);

            SqlConnection cnn = new SqlConnection("Data Source=DESKTOP-AQKMAG5;Initial Catalog=FlowerDBTest;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert into TblFlowers Values (@FId, @FName, @FTId, @FPrice, @FDes, @FImgUrl, @FInDate)", cnn);

            cmd.Parameters.Add("@FId", System.Data.SqlDbType.NChar);
            cmd.Parameters["@FId"].Value = txtId.Text;
            cmd.Parameters.Add("@FName", System.Data.SqlDbType.NVarChar);
            cmd.Parameters["@FName"].Value = txtName.Text;
            cmd.Parameters.Add("@FTId", System.Data.SqlDbType.Int);
            cmd.Parameters["@FTId"].Value = drpType.SelectedValue;
            cmd.Parameters.Add("@FPrice", System.Data.SqlDbType.Float);
            cmd.Parameters["@FPrice"].Value = txtPrice.Text;
            cmd.Parameters.Add("@FImgUrl", System.Data.SqlDbType.NVarChar);
            cmd.Parameters["@FImgUrl"].Value = "Images/" + imgName;
            cmd.Parameters.Add("@FDes", System.Data.SqlDbType.NVarChar);
            cmd.Parameters["@FDes"].Value = FlDes.Text;
            cmd.Parameters.Add("@FInDate", System.Data.SqlDbType.DateTime);
            cmd.Parameters["@FInDate"].Value = DateTime.Now;
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();

        }
    }
}