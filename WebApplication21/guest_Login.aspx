﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" Codefile="guest_Login.aspx.cs" Inherits="WebApplication21.guest_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="row">
        <div class="col-md-6 mx-auto">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center><img width="150px" src="imgs/userp.jpg" />

                            </center>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col">
                            <center>
                              <h3>others login</h3>

                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
         
                                <hr />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <label>User ID</label>
                         <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="User Id"></asp:TextBox>
                         </div>   
                                <label>Password</label>
                         <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                         </div>   
                           <div class="form-group">
                                <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" />
                         </div>
                              <a href="guestlecture_Signup.aspx"> <div class="form-group">
                                 <input class="btn btn-info btn-block  btn-lg" id="Button2" type="button" value="Signup" /></div></a>
                         </div>   
         
         
                        </div>
                        </div>
                <div>
                 <a href="PageCommon.aspx"><<"Back to home"</a>

                </div>
            
          
            </div>

 
      

        
       
       
        </div>
    </div>
    </div>
</asp:Content>
