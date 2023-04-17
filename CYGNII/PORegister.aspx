<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PORegister.aspx.cs" Inherits="CYGNII.PORegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 


    <section id="main-content">
        <section class="wrapper">
            <div class="row">

                <div style="justify-content: center;" class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-6 col-md-offset-4">
                                <h1>PO Register </h1>

                            </div>
                        </header>
                        <center>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-5 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="slno"><b>Sl No </b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" ID="slno" class="form-control input-sm" placeholder="Sl No "></asp:TextBox>

                                        </div>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtcust"><b>Customer </b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" ID="txtcust" class="form-control input-sm" placeholder="Customer"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <br />

                                <div class="row">
                                    <div class="col-md-5 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtlocation"><b>Location</b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" ID="txtlocation" class="form-control input-sm" placeholder="Location"></asp:TextBox>

                                        </div>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="DLNatureofenq"><b>Nature Of Enquiry </b></asp:Label><br />
                                            <asp:DropDownList ID="DLNatureofenq" class="form-control input-sm" runat="server">
                                                <asp:ListItem>Health checkup</asp:ListItem>
                                                <asp:ListItem>AMC</asp:ListItem>
                                                <asp:ListItem>Programming</asp:ListItem>
                                                <asp:ListItem>Manday Support</asp:ListItem>
                                                <asp:ListItem>Spares sales</asp:ListItem>
                                                <asp:ListItem>Spares Repair</asp:ListItem>
                                                <asp:ListItem>Turnkey</asp:ListItem>
                                                <asp:ListItem>Training</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>

                                <br />

                                <div class="row">
                                    <div class="col-md-5 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="DLCategory"><b>Category</b></asp:Label><br />
                                            <asp:DropDownList ID="DLCategory" class="form-control input-sm" runat="server">
                                                <asp:ListItem>Paint</asp:ListItem>
                                                <asp:ListItem>BIW</asp:ListItem>
                                                <asp:ListItem>GI</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtPurchaseOrderNum"><b>Purchase Order Number</b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" ID="txtPurchaseOrderNum" class="form-control input-sm" placeholder="Purchase Order Number"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPurchaseOrderNum" ErrorMessage="Enter Currect value" ForeColor="Red" ValidationExpression='(^([0-9]*|\d*\d{1}?\d*)$)' ></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                </div>

                                <br />

                                <div class="row">
                                    <div class="col-md-5 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtPOValue"><b>PO Value</b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" ID="txtPOValue" class="form-control input-sm" placeholder="PO Value"></asp:TextBox>

                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPOValue" ErrorMessage="Enter Currect value" ForeColor="Red"  ValidationExpression='(^([0-9]*|\d*\d{1}?\d*)$)' ></asp:RegularExpressionValidator>

                                        </div>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtTax"><b>Tax</b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" ID="txtTax" class="form-control input-sm" placeholder="Tax"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtTax" ErrorMessage="Enter Currect value" ForeColor="Red" ValidationExpression='(^([0-9]*|\d*\d{1}?\d*)$)' ></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                </div>


                                <br />
                                <div class="row">
                                    <div class="col-md-5 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtTotalPoValue"><b>Total PO Value</b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" ID="txtTotalPoValue" class="form-control input-sm" placeholder="Total PO Value"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtTotalPoValue" ErrorMessage="Enter Currect value" ForeColor="Red" ValidationExpression='(^([0-9]*|\d*\d{1}?\d*)$)' ></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtPoLoiDate"><b>PO/LOI Date  </b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True"  ID="txtPoLoiDate" class="form-control input-sm" placeholder="PO/LOI Date"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>


                                <br />
                                <div class="row">
                                    <div class="col-md-5 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="dlWorkComp"><b>Work Completion</b></asp:Label><br />
                                            <asp:DropDownList ID="dlWorkComp" class="form-control input-sm" runat="server">
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>NO</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="DlBillingStat"><b>billing Status </b></asp:Label><br />
                                            <asp:DropDownList ID="DlBillingStat" class="form-control input-sm" runat="server">
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>NO</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-5 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtPaymentWithTax"><b>Payment With Tax</b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" ID="txtPaymentWithTax" class="form-control input-sm" placeholder="Payment With Tax"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtPaymentWithTax" ErrorMessage="Enter Currect value" ForeColor="Red" ValidationExpression='(^([0-9]*|\d*\d{1}?\d*)$)' ></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtTotalBalPayment"><b>Total Balance Payment  </b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" ID="txtTotalBalPayment" class="form-control input-sm" placeholder="Total Balance Payment"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtTotalBalPayment" ErrorMessage="Enter Currect value" ForeColor="Red" ValidationExpression='(^([0-9]*|\d*\d{1}?\d*)$)' ></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-5 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="DlPaymentStat"><b>Payment Status</b></asp:Label><br />
                                            <asp:DropDownList ID="DlPaymentStat" class="form-control input-sm" runat="server">
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>NO</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtDuePayWithTax"><b>Due Payment With Tax</b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" ID="txtDuePayWithTax" class="form-control input-sm" placeholder="Due Payment With Tax"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtDuePayWithTax" ErrorMessage="Enter Currect value" ForeColor="Red" ValidationExpression='(^([0-9]*|\d*\d{1}?\d*)$)' ></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                </div>

                                <br />
                                <div class="row">
                                    <div class="col-md-10 col-md-offset-1">
                                        <div class="form-group">

                                            <asp:Button Text="Save" ID="btnsave" CssClass="btn btn-primary btn-lg" Width="220px" runat="server" BackColor="#66FF33" BorderColor="#66FF33" OnClick="btnsave_Click" />
                                            &nbsp;
                                            <asp:Button Text="Update" ID="btnupdate" CssClass="btn btn-primary btn-lg" Width="220px" runat="server" OnClick="btnupdate_Click" BackColor="#FFCC00" BorderColor="#FFCC00" />
                                            &nbsp;
                                            <asp:Button Text="Delete" ID="btndlt" CssClass="btn btn-danger btn-lg" Width="220px" runat="server" OnClientClick="return confirm('Are you sure you Want to delete ?')" OnClick="btndlt_Click" />
                                            &nbsp;
                                            <asp:Button Text="Search" ID="btnsearch" CssClass="btn btn-danger btn-lg" Width="220px" runat="server" BackColor="#66CCFF" BorderColor="#66CCFF" OnClick="btnsearch_Click" />

                                        </div>
                                    </div>

                                </div>
                                <br />

                                <div class="row">
                                    <div class="col-md-10 col-md-offset-1">
                                        <div class="form-group">
                                            <div class="table-responsive">

                                                <asp:GridView ID="gv" AutoGenerateSelectButton="true" SelectedRowStyle-BackColor="Green" Width="100%" CssClass="table table-condensed table-hover" runat="server" OnSelectedIndexChanged="gv_SelectedIndexChanged">
                                                    <HeaderStyle BackColor="#00FFCC" Font-Bold="True" ForeColor="black" />
                                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                                    <SelectedRowStyle BackColor="#66FF99" Font-Bold="True" ForeColor="black"></SelectedRowStyle>
                                                </asp:GridView>


                                                <br />
                                                
                                                
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       <asp:Button Text="Export To Excel" ID="excelExport"
                                           CssClass="btn btn-danger btn-lg" Width="191px" runat="server" BackColor="#CC99FF" OnClick="excelExport_Click" />




                                            </div>
                                        </div>
                                    </div>
                                </div>




                                <br />
                                &nbsp;<center>
                                    <asp:Label align="center" Text="" ForeColor="red" Font-Bold="true" ID="lblmessage" CssClass="label label-success" runat="server" />
                                </center>
                            </div>
                        </center>
                    </section>
                </div>
            </div>
        </section>
    </section>




















</asp:Content>
