<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerList.aspx.cs" Inherits="CYGNII.CustomerList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="~/App_Themes/Theme1/StyleSheet1.css" rel="StyleSheet" />



    <section id="main-content">
        <section class="wrapper">
            <div class="row">
                <div style="justify-content: center;" class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-6 col-md-offset-4">
                                <h1>Customer List</h1>
                            </div>
                        </header>
                        <center>
                            <div>
                                <div align="center" class="row">
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="slno"><b>Sl No </b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" ID="slno" class="form-control input-sm" placeholder="Sl No "></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="DlSegment"><b>Segment </b></asp:Label><br />

                                            <asp:DropDownList ID="DlSegment" class="form-control input-sm" runat="server">
                                                <asp:ListItem>automotive OEMs</asp:ListItem>
                                                <asp:ListItem>tier 1</asp:ListItem>
                                                <asp:ListItem>Integrator and equipment manufacturers</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="DlCompanyname"><b>Company  Name</b></asp:Label><br />
                                            <asp:DropDownList ID="DlCompanyname" class="form-control input-sm" runat="server">
                                                <asp:ListItem>x</asp:ListItem>
                                                <asp:ListItem>y</asp:ListItem>
                                                <asp:ListItem>z</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <div align="center" class="row">
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtCustName"><b>customer Name </b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" ID="txtCustName" class="form-control input-sm" placeholder="Head Name"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtdepatment"><b>department</b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" ID="txtdepatment" class="form-control input-sm" placeholder=" department"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtdesignac"><b>Designaction </b></asp:Label><br />
                                            <asp:TextBox runat="server" Enabled="True" ID="txtdesignac" class="form-control input-sm" placeholder="Designaction"></asp:TextBox>
                                        </div>
                                    </div>

                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtcontNofirst"><b>Contact No 1</b></asp:Label><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcontNofirst" ErrorMessage="*" ForeColor="Red" ValidationExpression="\+?\d[\d -]{8,12}\d"></asp:RegularExpressionValidator><br />
                                            <asp:TextBox runat="server" Enabled="True" ID="txtcontNofirst" class="form-control input-sm" placeholder="Contact No 1" MaxLength="10"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtcontNosecond"><b>Contact No 2</b></asp:Label>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcontNosecond" ErrorMessage="*" ForeColor="Red" ValidationExpression="\+?\d[\d -]{8,12}\d"></asp:RegularExpressionValidator><br />
                                            <asp:TextBox runat="server" Enabled="True" ID="txtcontNosecond" class="form-control input-sm" placeholder="Contact No 2" MaxLength="10"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="txtEmailid"><b>Email Id</b></asp:Label>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtEmailid" ErrorMessage="*" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
                                            <asp:TextBox runat="server" Enabled="True" ID="txtEmailid" class="form-control input-sm" placeholder="Email Id"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="DLCity"><b>City</b></asp:Label><br />
                                            <asp:DropDownList ID="DLCity" class="form-control input-sm" runat="server">
                                                <asp:ListItem>Pune</asp:ListItem>
                                                <asp:ListItem>Mumbai</asp:ListItem>
                                                <asp:ListItem>Benglore</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="DLState"><b>State</b></asp:Label><br />
                                            <asp:DropDownList ID="DLState" class="form-control input-sm" runat="server">
                                                <asp:ListItem>maharashtra</asp:ListItem>
                                                <asp:ListItem>Karnataka</asp:ListItem>
                                                <asp:ListItem>Panjab</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label runat="server" AssociatedControlID="DLCountry"><b>Country</b></asp:Label><br />
                                            <asp:DropDownList ID="DLCountry" class="form-control input-sm" runat="server">
                                                <asp:ListItem>India</asp:ListItem>
                                                <asp:ListItem>UK</asp:ListItem>
                                                <asp:ListItem>Rusia</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-12 col-md-offset-1">
                                        <div class="form-group">

                                            <asp:Button Text="Save" ID="btnsave" CssClass="btn btn-primary btn-lg" Width="220px" runat="server" BackColor="#66FF33" BorderColor="#66FF33" OnClick="btnsave_Click" />
                                            &nbsp;
                                            <asp:Button Text="Update" ID="btnupdate" CssClass="btn btn-primary btn-lg" Width="220px" runat="server" OnClick="btnupdate_Click" BackColor="#FFCC00" BorderColor="#FFCC00" />
                                            &nbsp;
                                            <asp:Button Text="Delete" ID="btndlt" CssClass="btn btn-danger btn-lg" Width="220px" runat="server" OnClientClick="return confirm('Are you sure you Want to delete ?')" OnClick="btndlt_Click" />
                                            &nbsp;
                                            <asp:Button Text="Search" ID="btnsearch" CssClass="btn btn-danger btn-lg" Width="220px" runat="server" BackColor="#66CCFF" BorderColor="#66CCFF" OnClick="btnsearch_Click" />
                                            &nbsp;
                                            <asp:Button Text="Export To Excel" ID="excelExport" CssClass="btn btn-danger btn-lg" Width="191px" runat="server" BackColor="#CC99FF" OnClick="excelExport_Click" />
                                            &nbsp;
                                            <asp:Button ID="Button2" runat="server" Text="Import " OnClick="btnImport_Click" />
                                        </div>
                                    </div>

                                </div>
                                <br />
                             
                                <br />
                                <div class="row">
                                    <div class="col-md-14 col-md-offset-1">
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
                                            <asp:Button ID="btnSend" runat="server" Text="Import " OnClick="btnImport_Click" />
                                        </td>
                                    </tr>
                                </table>



                                <br />
                                <br />
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
