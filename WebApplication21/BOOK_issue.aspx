<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="BOOK_issue.aspx.cs" Inherits="WebApplication21.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <title>
         Student Book Issue
    </title>
   
    <!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>




    
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .column{
        height: 400px;
        float: left;
    }
    #col1{
        width: 40%;
        ///background: tomato;
    }
    #col2{
        width: 60%;
        //background: green;
    }
    .column{
        position: relative;      
        height: 100vh;
        background-size: cover;
    }
    div{
        
        overflow: inherit;
    }
    
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
<!----------------------------------- Container 1----------------------------------------------------->

<div id="col1" class="column">
  
  
   <br /> 
           <div class="row">
   
            <div class="col">
                <label class="control-label " for="name">
                    User Id
                </label>
                <asp:TextBox CssClass="form-control" ID="userId" placeholder="User ID" runat="server" onFocus="userIdChange(this)" />
                <!-- validation -->
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="userId" runat="server" ErrorMessage="Enter User ID" ForeColor="Red" />

                <!--<input class="form-control" id="name" name="userId" type="text" required/> -->

            </div>

            <div class="col">
                <label class="control-label " for="name1">
                    Book L No.
                </label>
                <asp:TextBox CssClass="form-control" ID="bookLNo" placeholder="Book L No" runat="server" onFocus="userIdChange(this)" />
                <!-- validation -->
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="bookLNo" runat="server" ErrorMessage="Enter Book L No" ForeColor="Red" />
                <!-- <input class="form-control" id="name1" name="bookLNo" type="text" required/> -->
            </div>
        </div>


        <!--  search button -->
        <div class="form-group ">
            <center> <asp:Button ID="Button1" class="btn btn-secondary btn-sm" name="search" Text="Search"  runat="server" OnClick="Button1_Click"  /> </center>
        </div>
    
        <div class="row">
            <div class="col">
                <label class="control-label " for="name2">
                    User Name
                </label>
                <asp:TextBox CssClass="form-control" ID="userName" runat="server" Enabled="false" />
                <!-- <input class="form-control"  id="bookName" name="bookName" type="text" required /> -->
            </div>

            <div class="col">
                <label class="control-label " for="name3">
                    Author Name
                </label>
                <asp:TextBox CssClass="form-control" ID="authorName" runat="server" Enabled="false" />
                <!-- <input class="form-control"  id="authorName" name="authorName" type="text" required/> -->
            </div>
        </div>

        <div class="row">
            <div class="col">
                <label class="control-label " for="name2">
                    Book Name
                </label>
                <asp:TextBox CssClass="form-control" ID="bookName" runat="server"  Enabled="false"/>
                <!-- <input class="form-control"  id="bookName" name="bookName" type="text" required /> -->
            </div>
        </div>


        <div class="row">
            <div class="col">
                <label class="control-label requiredField" for="date1">
                    Issue Date
                </label>
                <div class="input-group">
                    <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                    </div>
                    <asp:TextBox CssClass="form-control" ID="issueDate"  runat="server"  Enabled="false"/>
                  <!--<input class="form-control"  id="issueDate"  placeholder="dd-mm-yyyy" type="text" />-->
                </div>
            </div>
              


            <div class="col">
                <label class="control-label requiredField" for="date2">
                    Due Date
                </label>
                <div class="input-group">
                    <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                    </div>
                    <asp:TextBox CssClass="form-control" ID="dueDate" placeholder="DD-MM-YYYY" runat="server" />

                    <!--  <input class="form-control"  id="dueDate"  placeholder="DD-MMYYYY" type="text" /> -->
                </div>
            </div>
            <div class="col">
                <label class="control-label " for="name">
                    Rack
                </label>
                <asp:TextBox CssClass="form-control" ID="rack" placeholder="Rack" runat="server" Enabled="false"/>
            </div>
        </div>

        <div class="form-group">
            <div>
                
                <center><asp:Button runat="server" name="submit" class="btn btn-primary" Text="Issue Book" OnClick="submit_Click" /></center>
            </div>
        </div>
    
            </div> 

<!----------------------------------- Container 2----------------------------------------------------->
<div id="col2" class="column">
                
                <br />
<center>
    <h4>Book/s issued to this user:</h4>
    <asp:GridView 
        ID="GridView1" 
        runat="server" 
        EmptyDataText="No Data Found!" 
        BackColor="White" 
        BorderColor="#999999" 
        BorderStyle="None" 
        BorderWidth="1px" 
        CellPadding="3" 
        GridLines="None" Width="100%"
        >

        <AlternatingRowStyle BackColor="#DCDCDC" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
     </asp:GridView>
</center>
</div>
    
<!----------------------------------- Container fluid end----------------------------------------------------->
 </div>

      
<!--- user Id and bookLNo change event empty author and book name -->
    <script type="text/javascript">
        function userIdChange(txt) {
            //$("#userName").val("");
            document.getElementById('<%= userName.ClientID %>').value = '';
            document.getElementById('<%= bookName.ClientID %>').value = '';
            document.getElementById('<%= authorName.ClientID %>').value = '';
        }
    </script>

    
<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

<!-- due date-->
     <script type="text/javascript" > 
        $(document).ready(function () {
            var date_input = $('input[id="<%= dueDate.ClientID %>"]'); //our date input has the id "dueDate"
            var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
            var options = {
                format: 'dd-mm-yyyy',
                container: container,
                todayHighlight: true,
                autoclose: true,
            };
            date_input.datepicker(options);
        })
   </script> 



</asp:Content>
