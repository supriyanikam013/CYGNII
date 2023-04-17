using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net.NetworkInformation;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace CYGNII
{

    public partial class CustomerList : System.Web.UI.Page
    {
        datalayer dl = new datalayer();
        static string Cust_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            show();
            if (!this.IsPostBack)
            {
                BindGrid();
            }
        }
        public void show()
        {
            string qry = "select * from CustomerList";
            dl.fillgridView(qry, gv);
        }
        public void Cleartxt()
        {
            slno.Text = "";
            DlSegment.SelectedIndex = 1;
            DlCompanyname.SelectedIndex = 1;
            txtdepatment.Text = "";
            txtdesignac.Text = "";
            txtcontNofirst.Text = "";
            txtcontNosecond.Text = "";
            txtEmailid.Text = "";
            DLCity.SelectedIndex = 1;
            DLState.SelectedIndex = 1;
            DLCountry.SelectedIndex = 1;


        }

        protected void gv_SelectedIndexChanged(object sender, EventArgs e)
        {
            slno.Text = Cust_id = gv.SelectedRow.Cells[1].Text.ToString();
            //DlSegment.Text = gv.SelectedRow.Cells[2].Text.ToString();
            //DlCompanyname.Text = gv.SelectedRow.Cells[3].Text.ToString();
            txtdepatment.Text = gv.SelectedRow.Cells[4].Text.ToString();
            txtdesignac.Text = gv.SelectedRow.Cells[5].Text.ToString();
            txtcontNofirst.Text = gv.SelectedRow.Cells[6].Text.ToString();
            txtcontNosecond.Text = gv.SelectedRow.Cells[7].Text.ToString();
            txtEmailid.Text = gv.SelectedRow.Cells[8].Text.ToString();
            //DLCity.Text = gv.SelectedRow.Cells[9].Text.ToString();
            //DLState.Text = gv.SelectedRow.Cells[10].Text.ToString();
            //DLCountry.Text = gv.SelectedRow.Cells[11].Text.ToString();

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            string qry = "insert into CustomerList(Sl_No,Segment,Company_Name,Cust_Name,Department,Designation,Contact_No_first,Contact_No_Second,Email_Id,City,State,Country)" +
                "values('" + Int64.Parse(slno.Text) + "','" + DlSegment.SelectedValue + "','" + DlCompanyname.SelectedValue + "','" + txtCustName.Text + "','" + txtdepatment.Text + "','" + txtdesignac.Text + "' ,'" + txtcontNofirst.Text + "','" + txtcontNosecond.Text + "','" + txtEmailid.Text + "','" + DLCity.Text + "','" + DLState.Text + "','" + DLCountry.Text + "')";

            string retmsg = dl.insertUpdateCreateOrDelete(qry);
            lblmessage.Text = retmsg;

            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Good job!', '" + retmsg + "', 'success');", true);

            show();
            Cleartxt();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            string qry = "update CustomerList set Segment='" + DlSegment.SelectedValue + "',Company_Name='" + DlCompanyname.SelectedValue + "',Cust_Name='" + txtCustName.Text + "' , " +
                " Department='" + txtdepatment.Text + "'  , Designation='" + txtdesignac.Text + "', Contact_No_first='" + txtcontNofirst.Text + "'" +
                ",Contact_No_Second='" + txtcontNosecond.Text + "', Email_Id='" + txtEmailid.Text + "' , City='" + DLCity.Text + "' , State='" + DLState.Text + "', Country='" + DLCountry.Text + "'  where Sl_No='" + Int64.Parse(slno.Text) + "'";

            string retmsg = dl.insertUpdateCreateOrDelete(qry);
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('updated ','" + retmsg + "',  'info');", true);
            lblmessage.Text = retmsg;
            show();
            Cleartxt();
        }

        protected void btndlt_Click(object sender, EventArgs e)
        {

            string qry = "delete from CustomerList where Sl_No='" + slno.Text + "'";
            string retmsg = dl.insertUpdateCreateOrDelete(qry);
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Good job!', '" + retmsg + "', 'error');", true);
            lblmessage.Text = retmsg;
            show();
            Cleartxt();

        }

        protected void excelExport_Click(object sender, EventArgs e)
        {
            
            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "";
            string FileName = "CustomerList_CYGNII" + DateTime.Now + ".xls";
            StringWriter strwritter = new StringWriter();
            HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
            gv.GridLines = GridLines.Both;
            gv.HeaderStyle.Font.Bold = true;
            gv.RenderControl(htmltextwrtter);
            Response.Write(strwritter.ToString());
            Response.End();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            return;
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {

            BindGrid();
        }


        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["connstring"].ConnectionString;
            using (SqlConnection con1 = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    
                    cmd.CommandText = "SELECT * FROM CustomerList WHERE  Cust_Name LIKE '%' + @custname + '%' ";
                    cmd.Connection = con1;
                    cmd.Parameters.AddWithValue("@custname", txtCustName.Text.Trim());
                    DataTable dt = new DataTable();
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                        gv.DataSource = dt;
                        gv.DataBind();
                    }
                }
            }
        }

        protected void btnImport_Click(object sender, EventArgs e)
        {
            try
            {
                string path = Path.GetFileName(fileuploadExcel.FileName);
                path = path.Replace(" ", "");
                fileuploadExcel.SaveAs(Server.MapPath("~/ExcelFile/") + path);
                String ExcelPath = Server.MapPath("~/ExcelFile/") + path;
                OleDbConnection mycon = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = " + ExcelPath + "; Extended Properties=Excel 8.0; Persist Security Info = False");
                mycon.Open();
                OleDbCommand cmd = new OleDbCommand("select * from [Customers_List$]", mycon);
                OleDbDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    // Response.Write("<br/>"+dr[0].ToString());

                    string Sl_No = dr[0].ToString();
                    string Segment = dr[1].ToString();
                    string Company_Name = dr[2].ToString();
                    string cust_name = dr[3].ToString();
                    string Department = dr[4].ToString();
                    string Designation = dr[5].ToString();
                    string Contact_No_First = dr[6].ToString();
                    string Contact_No_Second = dr[7].ToString();
                    string Email_Id = dr[8].ToString();
                    string City = dr[9].ToString();
                    string State = dr[10].ToString();
                    string Country = dr[11].ToString();

                    savedata(Sl_No, Segment, Company_Name, cust_name, Department, Designation, Contact_No_First, Contact_No_Second, Email_Id, City, State, Country);


                }
                lblmessage.Text = "Data Has Been Saved Successfully";
            }
            catch(Exception )
            {

            }
        }

        private void savedata(string Sl_No, String Segment, String Company_Name,string cust_name, String Department,string Designation ,string Contact_No_First ,string Contact_No_Second , string Email_Id , string City ,string State , string Country)
        {
            String mycon = ConfigurationManager.ConnectionStrings["connstring"].ConnectionString;
            SqlConnection con = new SqlConnection(mycon);
           
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into CustomerList(Sl_No,Segment,Company_Name,Cust_name,Department,Designation,Contact_No_First,Contact_No_Second,Email_Id,City,State,Country) values(@Sl_No,@Segment,@Company_Name,@Cust_name,@Department,@Designation,@Contact_No_First,@Contact_No_Second,@Email_Id,@City,@State,@Country )";
            cmd.Parameters.AddWithValue("@Sl_No", Convert.ToInt32( Sl_No));
            cmd.Parameters.AddWithValue("@Segment", Segment);
            cmd.Parameters.AddWithValue("@Company_Name", Segment);
            cmd.Parameters.AddWithValue("@Cust_name", cust_name);
            cmd.Parameters.AddWithValue("@Department", Department);
            cmd.Parameters.AddWithValue("@Designation", Designation);
            cmd.Parameters.AddWithValue("@Contact_No_First", Contact_No_First);
            cmd.Parameters.AddWithValue("@Contact_No_Second", Contact_No_Second);
            cmd.Parameters.AddWithValue("@Email_Id", Email_Id);
            cmd.Parameters.AddWithValue("@City", City);
            cmd.Parameters.AddWithValue("@State", State);
            cmd.Parameters.AddWithValue("@Country", Country);



            cmd.Connection = con;
            cmd.ExecuteNonQuery(); 

            con.Close();
            show();
            lblmessage.Text = "Import Successfully";
        }
    }

}