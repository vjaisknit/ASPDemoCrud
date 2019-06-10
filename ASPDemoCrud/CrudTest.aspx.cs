using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace ASPDemoCrud
{
    public partial class CrudTest : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                fillGrid();
            }
             
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("InsertTest",con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name", txtName.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            fillGrid();
        }

        private void fillGrid()
        {
            SqlCommand cmd = new SqlCommand("GetAllData",con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            grdDisplay.DataSource = ds;
            grdDisplay.DataBind();

        }

        protected void grdDisplay_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int idInDb=Convert.ToInt32(e.CommandArgument);
            SqlCommand cmd = new SqlCommand("GetDataForEdit", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", idInDb);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            txtName.Text=  ds.Tables[0].Rows[0]["name"].ToString();
            txtEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();

            btnSave.Text = "Update";
        }
    }
}