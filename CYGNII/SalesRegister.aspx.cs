using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.IO;
using System.Data.OleDb;

namespace CYGNII
{
    public partial class SalesRegister : System.Web.UI.Page
    {
        datalayer dl = new datalayer();
        static string Cust_id;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            show();
            if (!this.IsPostBack)
            {
                Enduser();
                BindGrid();
            }


        }

        public void Enduser()
        {
            // databind with enduser field
            string com = "Select * from CustomerList";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            dlenduser.DataSource = dt;
            dlenduser.DataBind();
            dlenduser.DataTextField = "Cust_Name";
            dlenduser.DataValueField = "Cust_Name";
            dlenduser.DataBind();
        }
        protected void dlenduser_SelectedIndexChanged(object sender, EventArgs e)
        {
            string com = "Select City from CustomerList where Cust_Name='" + dlenduser.SelectedItem + "' ";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            txtlocation.Text = dt.Rows[0][0].ToString();
        }
        public void show()
        {
            string qry = "select * from SalesRegister";
            dl.fillgridView(qry, gv);
        }
        public void Cleartxt()
        {
            slno.Text = "";
            txtRfqdate.Text = "";
            DlleadGen.SelectedIndex = 1;
            txtbillcust.Text = "";
            dlenduser.SelectedIndex = 1;
            txtlocation.Text = "";
            txtRFQref.Text = "";
            txtRFQNo.Text = "";
            DLNatureofenq.SelectedIndex = 1;
            DLCategory.SelectedIndex = 1;
            txtprojectdesc.Text = "";
            txtCurrentstatusandrem.Text = "";
            txtresp.Text = "";
            txtDuedate.Text = "";
            txtRevdate.Text = "";
            DLQuotestat.SelectedIndex = 1;
            txtQuotval.Text = "";
            DLorderstat.SelectedIndex = 1;
            txtTenttimeline.Text = "";
            txtFlag.Text = "";

        }
        protected void gv_SelectedIndexChanged(object sender, EventArgs e)
        {
            slno.Text = Cust_id = gv.SelectedRow.Cells[1].Text.ToString();
            txtRfqdate.Text = gv.SelectedRow.Cells[2].Text.ToString();
            DlleadGen.Text = gv.SelectedRow.Cells[3].Text.ToString();
            txtbillcust.Text = gv.SelectedRow.Cells[4].Text.ToString();
            dlenduser.Text = gv.SelectedRow.Cells[5].Text.ToString();
            txtlocation.Text = gv.SelectedRow.Cells[6].Text.ToString();
            txtRFQref.Text = gv.SelectedRow.Cells[7].Text.ToString();
            txtRFQNo.Text = gv.SelectedRow.Cells[8].Text.ToString();
            DLNatureofenq.Text = gv.SelectedRow.Cells[9].Text.ToString();
            DLCategory.Text = gv.SelectedRow.Cells[10].Text.ToString();
            txtprojectdesc.Text = gv.SelectedRow.Cells[11].Text.ToString();
            txtCurrentstatusandrem.Text = gv.SelectedRow.Cells[12].Text.ToString();
            txtresp.Text = gv.SelectedRow.Cells[13].Text.ToString();
            txtDuedate.Text = gv.SelectedRow.Cells[14].Text.ToString();
            txtRevdate.Text = gv.SelectedRow.Cells[15].Text.ToString();
            DLQuotestat.Text = gv.SelectedRow.Cells[16].Text.ToString();
            txtQuotval.Text = gv.SelectedRow.Cells[17].Text.ToString();
            DLorderstat.Text = gv.SelectedRow.Cells[18].Text.ToString();
            txtTenttimeline.Text = gv.SelectedRow.Cells[19].Text.ToString();
            txtFlag.Text = gv.SelectedRow.Cells[20].Text.ToString();
        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
            string qry = "insert into SalesRegister(Sl_No,RFQ_Date,Lead_Generator,Billing_Customer,End_User,Location,RFQ_Reference,RFQ_No,Nature_of_Enquiry,Category,Project_Description,Current_Status_and_Remark,Responsible,Due_Date,Revised_Date,Quote_Status,Quotation_Value,Order_Status,Tentative_time_line,Flag)" +
                           "values('" + Int64.Parse(slno.Text) + "','" + txtRfqdate.Text + "','" + DlleadGen.Text + "','" + txtbillcust.Text + "','" + dlenduser.Text + "','" + txtlocation.Text + "' ,'" + txtRFQref.Text + "','" + txtRFQNo.Text + "','" + DLNatureofenq.Text + "','" + DLCategory.Text + "','" + txtprojectdesc.Text + "','" + txtCurrentstatusandrem.Text + "','" +txtresp.Text + "','" + txtDuedate.Text + "','" + txtRevdate.Text + "','" + DLQuotestat.Text + "','" + txtQuotval.Text + "','" + DLorderstat.Text + "','" + txtTenttimeline.Text + "','" + txtFlag.Text + "')";

            string retmsg = dl.insertUpdateCreateOrDelete(qry);
            lblmessage.Text = retmsg;

            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Good job!', '" + retmsg + "', 'success');", true);

            show();
            Cleartxt();

        }
        protected void btnupdate_Click(object sender, EventArgs e)
        {
            string qry = "update SalesRegister set RFQ_Date='" + txtRfqdate.Text + "',Lead_Generator='" + txtRfqdate.Text + "' , " +
                " Billing_Customer='" + txtbillcust.Text + "'  , End_User='" + dlenduser.Text + "', Location='" + txtlocation.Text + "'" +
                ",RFQ_Reference='" + txtRFQref.Text + "', RFQ_No='" + txtRFQNo.Text + "' , Nature_of_Enquiry='" + DLNatureofenq.Text + "' , Category='" + DLCategory.Text + "' , Project_Description='" + txtprojectdesc.Text + "' , Current_Status_and_Remark='" + txtCurrentstatusandrem.Text + "', Responsible='" + txtresp.Text + "' , Due_Date='" + txtDuedate.Text + "' , Revised_Date='" + txtRevdate.Text + "', Quote_Status='" + DLQuotestat.Text + "' , Quotation_Value='" + txtQuotval.Text + "' , Order_Status='" + DLorderstat.Text + "', Tentative_time_line='" + txtTenttimeline.Text + "', Flag='" + txtFlag.Text +"' where Sl_No='" + Int64.Parse(slno.Text) + "'";

            string retmsg = dl.insertUpdateCreateOrDelete(qry);
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('updated ','" + retmsg + "',  'info');", true);
            lblmessage.Text = retmsg;
            show();
            Cleartxt();
        }
        protected void btndlt_Click(object sender, EventArgs e)
        {

            string qry = "delete from SalesRegister where Sl_No='" + slno.Text + "'";
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

                    cmd.CommandText = "SELECT * FROM SalesRegister WHERE  End_User LIKE '%' + @Enduser + '%' ";
                    cmd.Connection = con1;
                    cmd.Parameters.AddWithValue("@Enduser", dlenduser.Text.Trim());
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
        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                string path = Path.GetFileName(fileuploadExcel.FileName);
                path = path.Replace(" ", "");
                fileuploadExcel.SaveAs(Server.MapPath("~/ExcelFile/") + path);
                String ExcelPath = Server.MapPath("~/ExcelFile/") + path;
                OleDbConnection mycon = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = " + ExcelPath + "; Extended Properties=Excel 8.0; Persist Security Info = False");
                mycon.Open();
                OleDbCommand cmd = new OleDbCommand("select * from [SalesRegister$]", mycon);
                OleDbDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                      


                    string Sl_No = dr[0].ToString();
                    string RFQ_Date = dr[1].ToString();
                    string Lead_Generator = dr[2].ToString();
                    string Billing_Customer = dr[3].ToString();
                    string End_User = dr[4].ToString();
                    string Location = dr[5].ToString();
                    string RFQ_Reference = dr[6].ToString();
                    string RFQ_No = dr[7].ToString();
                    string Nature_of_Enquiry = dr[8].ToString();
                    string Category = dr[9].ToString();
                    string Project_Description = dr[10].ToString();
                    string Current_Status_and_Remark = dr[11].ToString();
                    string Responsible = dr[12].ToString();
                    string Due_Date = dr[13].ToString();
                    string Revised_Date = dr[14].ToString();
                    string Quote_Status = dr[15].ToString();
                    string Quotation_Value = dr[16].ToString();
                    string Order_Status = dr[17].ToString();
                    string Tentative_time_line = dr[18].ToString();
                    string Flag = dr[19].ToString();

                    savedata(Sl_No, RFQ_Date, Lead_Generator, Billing_Customer, End_User, Location,RFQ_Reference, RFQ_No, Nature_of_Enquiry, Category, Project_Description,Current_Status_and_Remark,Responsible,Due_Date,Revised_Date,Quote_Status, Quotation_Value,Order_Status,Tentative_time_line,Flag);


                }
                lblmessage.Text = "Data Has Been Saved Successfully";
            }
            catch (Exception ex)
            {
                lblmessage.Text =ex.ToString(); 
            }
        }

        private void savedata(string Sl_No, String RFQ_Date, String Lead_Generator,string Billing_Customer, String End_User, string Location, string RFQ_Reference,string RFQ_No, string Nature_of_Enquiry, string Category, string Project_Description,string Current_Status_and_Remark,string Responsible ,string Due_Date , string Revised_Date ,string Quote_Status, string Quotation_Value ,string Order_Status,string Tentative_time_line,string Flag)
        {
            String mycon = ConfigurationManager.ConnectionStrings["connstring"].ConnectionString;
            SqlConnection con = new SqlConnection(mycon);

            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into SalesRegister(Sl_No,RFQ_Date,Lead_Generator,Billing_Customer,End_User,Location,RFQ_Reference,RFQ_No,Nature_of_Enquiry,Category,Project_Description,Current_Status_and_Remark,Responsible,Due_Date,Revised_Date,Quote_Status,Quotation_Value,Order_Status,Tentative_time_line,Flag)values(@Sl_No,@RFQ_Date,@Lead_Generator,@Billing_Customer,@End_User,@Location,@RFQ_Reference,@RFQ_No,@Nature_of_Enquiry,@Category,@Project_Description,@Current_Status_and_Remark,@Responsible,@Due_Date,@Revised_Date,@Quote_Status,@Quotation_Value,@Order_Status,@Tentative_time_line,@Flag)";
           
            
            
            cmd.Parameters.AddWithValue("@Sl_No", Convert.ToInt32(Sl_No));
            cmd.Parameters.AddWithValue("@RFQ_Date", RFQ_Date);
            cmd.Parameters.AddWithValue("@Lead_Generator",Lead_Generator);
            cmd.Parameters.AddWithValue("@Billing_Customer", Billing_Customer);
            cmd.Parameters.AddWithValue("@End_User", End_User);
            cmd.Parameters.AddWithValue("@Location",Location);
            cmd.Parameters.AddWithValue("@RFQ_Reference", RFQ_Reference);
            cmd.Parameters.AddWithValue("@RFQ_Not", RFQ_No);
            cmd.Parameters.AddWithValue("@Nature_of_Enquiry", Nature_of_Enquiry);
            cmd.Parameters.AddWithValue("@Category", Category);
            cmd.Parameters.AddWithValue("@Project_Description", Project_Description);
            cmd.Parameters.AddWithValue("@Current_Status_and_Remark", Current_Status_and_Remark);
            cmd.Parameters.AddWithValue("@Responsible", Responsible);
            cmd.Parameters.AddWithValue("@Due_Date", Due_Date);
            cmd.Parameters.AddWithValue("@Revised_Date", Revised_Date);
            cmd.Parameters.AddWithValue("@Quote_Status)", Quote_Status);
            cmd.Parameters.AddWithValue("@Quotation_Value", Quotation_Value);
            cmd.Parameters.AddWithValue("@Order_Status", Order_Status);
            cmd.Parameters.AddWithValue("@Tentative_time_line", Tentative_time_line);
            cmd.Parameters.AddWithValue("@Flag", Flag);



            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
        }



        protected void txtRfqdate_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DlleadGen_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DLQuotestat_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       
    }
}