<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="sBOOK_return.aspx.cs" Inherits="WebApplication21.sBOOK_return" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            height: 26px;
        }        
    p{
    word-break: break-all; // will break at end of line 
        }
    .column{
        position: relative;
      
        height: 100vh;
        background-size: cover;
        margin:0 auto; /* this will center the page */
        width:960px; /*  use your width here */
    }
    div{
        overflow: inherit;
    }
    
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
    <div class="page-header">
  <center> <h2>Book Return</h2></center> 
        </div>
<!----------------------------------- Container 1----------------------------------------------------->

<div class="column">
  
   <br /> 
           <div class="row">
   
            <div class="col">
                <label class="control-label " for="name">
                    Staff Id
                </label>
                <asp:TextBox CssClass="form-control" ID="userId" placeholder="Staff ID" runat="server" OnTextChanged="userIdChanged" AutoPostBack="true" />
                <!-- validation -->
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="userId" runat="server" ErrorMessage="Enter User ID" ForeColor="Red" />

                <!--<input class="form-control" id="name" name="userId" type="text" required/> -->

            </div>

            <div class="col">
                <label class="control-label " for="name1">
                    Book L No.
                </label>
                <asp:TextBox CssClass="form-control" ID="bookLNo" placeholder="Book L No" runat="server" OnTextChanged="bookLNoChanged" AutoPostBack="true" />
                <!-- validation -->
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="bookLNo" runat="server" ErrorMessage="Enter Book L No" ForeColor="Red" />
                <!-- <input class="form-control" id="name1" name="bookLNo" type="text" required/> -->
            </div>
        </div>

    <!--  Grid view -->
   
   <label class="control-label " for="GridView1">
                    Books issued to this user are:
                </label>
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
   <br />

    <!----hidden field for issue date for entering into  db bookreturn ---->
    <asp:HiddenField ID="issueDate" runat="server" />

        <div class="row">
            
            <div class="col">
                <label class="control-label requiredField" for="date2">
                    Return Date
                </label>
                <div class="input-group">
                    <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                    </div>
                    <asp:TextBox CssClass="form-control" ID="returnDate" placeholder="DD-MM-YYYY" runat="server" />
                </div>
            </div>

            <div class="col">
                <label class="control-label " for="name1">
                    Rack 
                </label>
                <asp:TextBox CssClass="form-control" ID="rack" placeholder="Rack" runat="server" enabled="false" />
            </div>

        </div>
    <div class="row">
   
            <div class="col">
                <label class="control-label " for="remark">
                    Remark
                </label>

                <asp:TextBox CssClass="form-control" ID="remark" runat="server"  TextMode="MultiLine" Text="Nil" /> 

            </div>            
     </div>

        <div class="form-group">
            <div>                
            <center><asp:Button runat="server" name="submit" class="btn btn-primary" Text="Return Book" OnClick="submit_Click" /></center>
            </div>
        </div>
    
    </div>

    
<!----------------------------------- Container fluid end----------------------------------------------------->
    </div>

</asp:Content>
