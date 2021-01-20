<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="WebApplication21.userlogin" %>
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
                              <h3>student login</h3>

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
                            <label>Register No</label>
                         <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Register No"></asp:TextBox>
                         </div>   
                                <label>Password</label>
                         <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                         </div>   
                           <div class="form-group">
                                <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" />
                         </div>
                              <a href="studsignup.aspx"> <div class="form-group">
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
