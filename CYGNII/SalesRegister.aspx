<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SalesRegister.aspx.cs" Inherits="CYGNII.SalesRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">




    <section id="main-content">
        <section class="wrapper">
            <div class="row">

                <div style="justify-content: center;" class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <h1>Sales Register</h1>

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
                                            <asp:Label runat="server" AssociatedControlID="txtRfqdate"><b>RFQ Date </b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" Name="date" ID="txtRfqdate" class="form-control input-sm" placeholder="RFQ Date"></asp:TextBox>
                                            <br />
                                        </div>
                                    </div>
                                </div>
                                <br />

                                <div class="row">
                                    <div class="col-md-5 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="DlleadGen"><b>Lead Generator </b></asp:Label><br />

                                            <asp:DropDownList ID="DlleadGen" class="form-control input-sm" runat="server" OnSelectedIndexChanged="DlleadGen_SelectedIndexChanged">
                                                <asp:ListItem>A</asp:ListItem>
                                                <asp:ListItem>B</asp:ListItem>
                                                <asp:ListItem>C</asp:ListItem>
                                            </asp:DropDownList>
                                            <br />

                                        </div>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtbillcust"><b>Billing Customer</b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" name="BrandName" ID="txtbillcust"
                                                class="form-control input-sm" placeholder="Billing Customer"></asp:TextBox>

                                        </div>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-5 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="dlenduser"><b>End User</b></asp:Label><br />



                                            <asp:DropDownList ID="dlenduser" AutoPostBack="true" class="form-control input-sm" runat="server" OnSelectedIndexChanged="dlenduser_SelectedIndexChanged">
                                                <asp:ListItem>select User</asp:ListItem>
                                            </asp:DropDownList>

                                        </div>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtlocation"><b>Location</b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" name="BrandName" ID="txtlocation" class="form-control input-sm" placeholder="Location"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <br />


                                <div class="row">
                                    <div class="col-md-5 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtRFQref"><b>RFQ Reference</b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" name="BrandName"
                                                ID="txtRFQref" class="form-control input-sm" placeholder=" RFQ Reference "></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtRFQNo"><b>RFQ No</b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" name="BrandName" ID="txtRFQNo" class="form-control input-sm" placeholder="RFQ No"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <br />
                                <div class="row">
                                    <div class="col-md-5 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="DLNatureofenq"><b>Nature Of Enquiry</b></asp:Label><br />

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
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="DLCategory"><b>Category</b></asp:Label><br />
                                            <asp:DropDownList ID="DLCategory" class="form-control input-sm" runat="server">
                                                <asp:ListItem>Paint</asp:ListItem>
                                                <asp:ListItem>BIW</asp:ListItem>
                                                <asp:ListItem>GI</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>s
                                <br />
                                <div class="row">
                                    <div class="col-md-5 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtprojectdesc"><b>Project Description</b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" name="BrandName"
                                                ID="txtprojectdesc" class="form-control input-sm" placeholder=" Project Description"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtCurrentstatusandrem"><b>Current Status And Remark</b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" name="BrandName" ID="txtCurrentstatusandrem" class="form-control input-sm" placeholder="Current Status And Remark"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>


                                <br />
                                <div class="row">
                                    <div class="col-md-5 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtresp"><b>Responsible</b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" name="BrandName"
                                                ID="txtresp" class="form-control input-sm" placeholder=" Responsible"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtDuedate"><b>Due Date</b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" Name="date" ID="txtDuedate" class="form-control input-sm" placeholder="Due Date"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <br />
                                <div class="row">
                                    <div class="col-md-5 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtRevdate"><b>Revise Date</b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" Name="date" ID="txtRevdate" class="form-control input-sm" placeholder=" Revise Date"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="DLQuotestat"><b>Quote Staus</b></asp:Label><br />
                                            <asp:DropDownList ID="DLQuotestat" class="form-control input-sm" runat="server">
                                                <asp:ListItem>Quoted</asp:ListItem>
                                                <asp:ListItem>Pending</asp:ListItem>
                                                <asp:ListItem>Not Feasible</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>

                                <br />
                                <div class="row">
                                    <div class="col-md-5 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtQuotval"><b>Quotation Value</b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" name="BrandName"
                                                ID="txtQuotval" class="form-control input-sm" placeholder=" Quotation Value"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter amount only" ControlToValidate="txtQuotval" ValidationExpression="(^([0-9]*|\d*\d{1}?\d*)$)"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="DLorderstat"><b>Order Status</b></asp:Label><br />
                                            <asp:DropDownList ID="DLorderstat" class="form-control input-sm" runat="server">
                                                <asp:ListItem>Received</asp:ListItem>
                                                <asp:ListItem>Pending</asp:ListItem>
                                                <asp:ListItem>Rejected</asp:ListItem>
                                                <asp:ListItem>On Hold</asp:ListItem>
                                                <asp:ListItem>In Process</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>

                                <br />
                                <div class="row">
                                    <div class="col-md-5 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtTenttimeline"><b>Tentative Date Timeline</b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" ID="txtTenttimeline" class="form-control input-sm" placeholder=" Tentative Date Timeline"></asp:TextBox>

                                        </div>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtFlag"><b>Flag</b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" name="BrandName" ID="txtFlag" class="form-control input-sm" placeholder="Flag"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>


                                <br />
                                <div class="row">
                                    <div class="col-md-10 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Button Text="Save" ID="btnsave" CssClass="btn btn-primary btn-lg" Width="220px" runat="server" BackColor="#66FF33" BorderColor="#66FF33" OnClick="btnsave_Click" />
                                            &nbsp;
                                            <asp:Button Text="Update" ID="btnupdate" CssClass="btn btn-primary btn-lg" Width="220px" runat="server" OnClick="btnupdate_Click" />
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


                                            </div>
                                        </div>
                                    </div>
                                </div>


                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       <asp:Button Text="Export To Excel" ID="excelExport"
                                           CssClass="btn btn-danger btn-lg" Width="191px" runat="server" BackColor="#CC99FF" OnClick="excelExport_Click" />

                                <br />
                                <br />
                                <br />




                                <table>
                                    <tr>
                                        <td>
                                            <span style="color: Red">*</span>Attach Excel file
                                        </td>
                                        <td>
                                            <asp:FileUpload ID="fileuploadExcel" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Button ID="btnSend" runat="server" Text="Import " OnClick="btnSend_Click" />
                                        </td>
                                    </tr>
                                </table>



                                <br />
                                <br />
                                <br />
                                <br />
                                &nbsp;<center>
                                    <asp:Label align="center" Text="" ForeColor="Green" Font-Bold="true" ID="lblmessage" CssClass="label label-success" runat="server" />
                                </center>
                            </div>
                        </center>
                    </section>
                </div>
            </div>
        </section>
    </section>




</asp:Content>
