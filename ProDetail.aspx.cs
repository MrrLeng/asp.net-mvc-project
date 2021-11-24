using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ProDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       String sId = Request.QueryString.Get("pid");
       SqlConnection cnn = new SqlConnection("Data Source=DESKTOP-AQKMAG5;Initial Catalog=FlowerDBTest;Integrated Security=True");
       SqlCommand cmd = new SqlCommand("Select FlowerId, FlowerName, FlowerDes, FlowerPrice, ImgUrl, FlowerType From tblFlowers f INNER JOIN tblFlowerTypes ft ON f.FlowerTypeId=ft.FlowerTypeId Where FlowerId=@fsId", cnn);
       cmd.Parameters.Add("@fsId", System.Data.SqlDbType.NVarChar);
       cmd.Parameters["@fsId"].Value = sId;
       SqlDataReader rd;
       cnn.Open();
       rd = cmd.ExecuteReader();
       ListView1.DataSource = rd;
       ListView1.DataBind();
       rd.Close();
       cnn.Close();
    }
}