<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="staffsignup.aspx.cs" Inherits="WebApplication21.staffsignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="row">
        <div class="col-md-8 mx-auto">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center><img width="100px" src="imgs/userp.jpg" />

                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <center>
                              <h4>Staff SignUp</h4>

                          </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
         
                                <hr>
                        </div>
                    </div>
                     <div class="row">
                        <div class="col-md-6">
                  <label>Full Name</label>
                         <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                         </div>   
                        </div>
                  
                        <div class="col-md-6">
          <label>Date Of Birth</label>
                         <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="DOB" TextMode="Date"></asp:TextBox>
                         </div>   
                        </div>
                    </div>
                     <div class="row">
                        <div class="col-md-6">
          <label>Contact No</label>
                         <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="contact no" TextMode="SingleLine"></asp:TextBox>
                         </div>   
                        </div>
                        <div class="col-md-6">
                        <label>Email-ID</label>
                         <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="mail address" TextMode="Email"></asp:TextBox>
                         </div>   
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
          <label>Desigination</label>
                         <div class="form-group">
                             <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                 <asp:ListItem Text="select" Value="select"> </asp:ListItem>
                                  <asp:ListItem Text="HOD" Value="HOD"> </asp:ListItem>
                                  <asp:ListItem Text="PROFESSOR" Value="PROFESSOR"> </asp:ListItem>
        
                                  <asp:ListItem Text="ASSOCIATE PROFESSOR" Value="ASSOCIATE PROFESSOR"> </asp:ListItem>
                                  <asp:ListItem Text="TECHNICAL STAFF" Value="TECHNICAL STAFF"></asp:ListItem>
                             </asp:DropDownList>
                         </div>   
                        </div>
                        </div>
    
                     <div class="row">
                        <div class="col-md-6">
          <label>User ID</label>
                         <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="user ID"></asp:TextBox>
                         </div>   
                        </div>
                        <div class="col-md-6">
          <label>Password</label>
                         <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                         </div>   
                        </div>
                    </div>


                         
                       <div class="row">
                        <div class="col">
                           <div class="form-group">
                                <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="SIGN UP" OnClick="Button1_Click" />
                         </div>  
                
                         </div>   
            </div>
           <a href="PageCommon.aspx"><< Back To home</a>
        </div>
                </div>
            </div>
        </div>
        </div>
</asp:Content>


