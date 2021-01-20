<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="studsignup.cs" Inherits="WebApplication21.studsignup" %>
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
                            <center>
                             <img width="100px" src="imgs/userp.jpg" />

                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <center>
                              <h4>Student SignUp</h4>

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
          <label>Register No</label>
                         <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Reg No" TextMode="Number"></asp:TextBox>
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
                        <div class="col-md-4">
          <label>Course</label>
                         <div class="form-group">
                             <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" placeholder="select">
                                 <asp:ListItem Text="select" Value="select"> </asp:ListItem>
                                  <asp:ListItem Text="MCA REGULAR" Value="MCA REGULAR"> </asp:ListItem>
                                  <asp:ListItem Text="MCA LATERAL" Value="MCA LATERAL"> </asp:ListItem>
                                  <asp:ListItem Text="M.SC COMPUTER SCIENCE" Value="M.SC COMPUTER SCIENCE"> </asp:ListItem>
                                  <asp:ListItem Text="M.Phil" Value="M.Phil"> </asp:ListItem>
                                  <asp:ListItem Text="Ph.d" Value="Ph.d"></asp:ListItem>
                             </asp:DropDownList>
                         </div>   
                        </div>
                         <div class="col-md-4">
                           <label>Batch</label>
                         <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="batch"></asp:TextBox>
                         </div>   
                        </div>
                  
                        <div class="col-md-4">
          <label>contact no</label>
                         <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="contact no" TextMode="Number"></asp:TextBox>
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
           <a href="PageCommon.aspx"><< Back To home</a></br>
        </div>
    </div>
            </div>
        </div>
    </div>
</asp:Content>
