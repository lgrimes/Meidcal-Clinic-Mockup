using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1.Pages
{
    public partial class PatientRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand cmd = new SqlCommand("insert_patient", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", TextBoxName.Text);
            cmd.Parameters.AddWithValue("@Address", TextBoxAddress.Text);
            cmd.Parameters.AddWithValue("@DateOfBirth", TextBoxDateOfBirth.Text);
            cmd.Parameters.AddWithValue("@Phone", TextBoxPhone.Text);
            cmd.Parameters.AddWithValue("@EmergencyContact", TextBoxEmergencyContact.Text);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}