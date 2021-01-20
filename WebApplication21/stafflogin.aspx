<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="stafflogin.aspx.cs" Inherits="WebApplication21.stafflogin" %>
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
                            <center><img width="150px" src="imgs/staff.jpg"/>

                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <center>
                              <h3>staff login</h3>

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
                            <label>Staff Id</label>
                         <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="StaffID"></asp:TextBox>
                         </div>   
                                <label>Password</label>
                         <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                         </div>   
                            <div class="form-group">
                                <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button5" runat="server" Text="LOGIN" OnClick="Button5_Click" />
                         </div>  
                               <a href="staffsignup.aspx"> <div class="form-group">
                                 <input class="btn btn-info btn-block  btn-lg" id="Button6" type="button" value="Signup" /></div></a>
                         </div>  
                          
         
         
                             
                         
                        </div>
                    </div>
                <a href="#"><<"forget password"</a></br>
           <a href="PageCommon.aspx"><<"Back to home"</a></br>
         
                </div>
            </div>
            

        </div>
    </div>
</asp:Content>
