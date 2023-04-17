using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CYGNII
{
    public partial class PORegister : System.Web.UI.Page
    {
        datalayer dl = new datalayer();
        static string Cust_id;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstring"].ConnectionString);

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
            string qry = "select * from PORegister";
            dl.fillgridView(qry, gv);
        }
        public void Cleartxt()
        {
            slno.Text = "";
            txtcust.Text = "";
            txtlocation.Text = "";
            DLNatureofenq.SelectedIndex = 1;
            DLCategory.SelectedIndex = 1;
            txtPurchaseOrderNum.Text = "";
            txtPOValue.Text = "";
            txtTax.Text = "";
            txtTotalPoValue.Text = "";
            txtPoLoiDate.Text = "";
            dlWorkComp.SelectedIndex = 1;
            DlBillingStat.SelectedIndex = 1;
            txtPaymentWithTax.Text = "";
            txtTotalBalPayment.Text = "";
            DlPaymentStat.SelectedIndex = 1;
            txtDuePayWithTax.Text = "";

        }

        protected void gv_SelectedIndexChanged(object sender, EventArgs e)
        {
            slno.Text = Cust_id = gv.SelectedRow.Cells[1].Text.ToString();
            txtcust.Text = gv.SelectedRow.Cells[2].Text.ToString();
            txtlocation.Text = gv.SelectedRow.Cells[3].Text.ToString();
            DLNatureofenq.Text = gv.SelectedRow.Cells[4].Text.ToString();
            DLCategory.Text = gv.SelectedRow.Cells[5].Text.ToString();
            txtPurchaseOrderNum.Text = gv.SelectedRow.Cells[6].Text.ToString();
            txtPOValue.Text = gv.SelectedRow.Cells[7].Text.ToString();
            txtTax.Text = gv.SelectedRow.Cells[8].Text.ToString();
            txtTotalPoValue.Text = gv.SelectedRow.Cells[9].Text.ToString();
            txtPoLoiDate.Text = gv.SelectedRow.Cells[10].Text.ToString();
            dlWorkComp.Text = gv.SelectedRow.Cells[11].Text.ToString();
            DlBillingStat.Text = gv.SelectedRow.Cells[12].Text.ToString();
            txtPaymentWithTax.Text = gv.SelectedRow.Cells[13].Text.ToString();
            txtTotalBalPayment.Text = gv.SelectedRow.Cells[14].Text.ToString();
            DlPaymentStat.Text = gv.SelectedRow.Cells[15].Text.ToString();
            txtDuePayWithTax.Text = gv.SelectedRow.Cells[16].Text.ToString();
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            string qry = "insert into PORegister(Sl_No,Customer,Location,NatureofEnquiry,Category,PurchaseOrderNumber,PO_Value,Tax,Total_PO_Value,PO_LOI_Date,Work_Completion,Billing_Status,Payment_With_Tax,Total_Balance_Payment,Payment_Status,Due_Payment_With_Tax)" +
                          "values('" + Int64.Parse(slno.Text) + "','" + txtcust.Text + "','" + txtlocation.Text + "','" + DLNatureofenq.Text + "','" + DLCategory.Text + "','" + txtPurchaseOrderNum.Text + "' ,'" + txtPOValue.Text + "','" + txtTax.Text + "','" + txtTotalPoValue.Text + "','" + txtPoLoiDate.Text + "','" + dlWorkComp.Text + "','" + DlBillingStat.Text + "','" + txtPaymentWithTax.Text + "','" + txtTotalBalPayment.Text + "','" + DlPaymentStat.Text + "','" + txtDuePayWithTax.Text + "')";

            string retmsg = dl.insertUpdateCreateOrDelete(qry);
            lblmessage.Text = retmsg;

            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Good job!', '" + retmsg + "', 'success');", true);

            show();
            Cleartxt();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            string qry = "update PORegister set Customer='" + txtcust.Text + "',Location='" + txtlocation.Text + "' , " +
                " NatureofEnquiry='" + DLNatureofenq.Text + "'  , Category='" + DLCategory.Text + "', PurchaseOrderNumber='" + txtPurchaseOrderNum.Text + "'" +
                ",PO_Value='" + txtPOValue.Text + "', Tax='" + txtTax.Text + "' , Total_PO_Value='" + txtTotalPoValue.Text + "' , PO_LOI_Date='" + txtPoLoiDate.Text + "' , Work_Completion='" + dlWorkComp.Text + "' , Billing_Status='" + DlBillingStat.Text + "', Payment_With_Tax='" + txtPaymentWithTax.Text + "' , Total_Balance_Payment='" + txtTotalBalPayment.Text + "' , Payment_Status='" + DlPaymentStat.Text + "', Due_Payment_With_Tax='" + txtDuePayWithTax.Text + "'  where Sl_No='" + Int64.Parse(slno.Text) + "'";

            string retmsg = dl.insertUpdateCreateOrDelete(qry);
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('updated ','" + retmsg + "',  'info');", true);
            lblmessage.Text = retmsg;
            show();
            Cleartxt();
        }

        protected void btndlt_Click(object sender, EventArgs e)
        {
            string qry = "delete from PORegister where Sl_No='" + slno.Text + "'";
            string retmsg = dl.insertUpdateCreateOrDelete(qry);
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Good job!', '" + retmsg + "', 'error');", true);
            lblmessage.Text = retmsg;
            show();
            Cleartxt();
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

                    cmd.CommandText = "SELECT * FROM PORegister WHERE  Customer LIKE '%' + @Customer + '%' ";
                    cmd.Connection = con1;
                    cmd.Parameters.AddWithValue("@Customer", txtcust.Text.Trim());
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
    }
}