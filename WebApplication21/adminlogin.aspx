﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="WebApplication21.adminlogin" %>
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
                            <center><img width="150px" src="imgs/adminu.jpg"/>

                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <center>
                              <h3>Admin login</h3>

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
                            <label>Admin Id</label>
                         <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Admin ID"></asp:TextBox>
                         </div>   
                                <label>Password</label>
                         <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                         </div>   
                            <div class="form-group">
                                <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" />
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
</asp:content>
