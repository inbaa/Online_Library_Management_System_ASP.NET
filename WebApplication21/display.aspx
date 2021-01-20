<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="display.aspx.cs" Inherits="WebApplication21.display" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" /> 
        <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>

         <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DISPLAY ALL BOOKS</strong>
                            </div>
                        <div class="card-body">

                            <asp:Repeater ID="r1" runat="server">
                                <HeaderTemplate>

                                     <table class="table"  id="example">
                              <thead>
                                <tr>
                                  <th scope="col">SERIAL NO</th>
                                  <th scope="col">ROLL NO</th>
                                  <th scope="col">LG NO</th>
                                  <th scope="col">SUBJECT</th>
                                  <th scope="col">BOOK NAME</th>
                                  <th scope="col">AUTHOR NAME</th>
                                  <th scope="col">CATEGORY</th>
                                  <th scope="col">MBID</th>
                                  <th scope="col">PUBLISHER</th>
                                  <th scope="col">PRICE</th>
                                  <th scope="col">DATE</th>
                                  <th scope="col">STATUS</th>
                                  <th scope="col">BARCODE</th>
                                  <th scope="col">QUANTITY</th>
                                  
                              </tr>
                           </thead>
                           <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>

                            <tr>
                                <td><%#Eval("SERIAL") %></td>
                                <td><%#Eval("RNO") %></td>
                                <td><%#Eval("LGNO") %></td>
                                <td><%#Eval("SUBJECT") %></td>
                                <td><%#Eval("BNAME") %></td>
                                <td><%#Eval("ANAME") %></td>
                                <td><%#Eval("CATEGORY") %></td>
                                <td><%#Eval("MBID") %></td>
                                <td><%#Eval("PUBLISHER") %></td>
                                <td><%#Eval("PRICE") %></td>
                                <td><%#Eval("DATE") %></td>
                                <td><%#Eval("STATUS") %></td>
                                <td><%#Eval("BARCODE") %></td>
                                <td><%#Eval("QUANTITY") %></td>

                             
                          </tr>

                                </ItemTemplate>
                                <FooterTemplate>

  
                                   </tbody>
                                   </table>

                                </FooterTemplate>

                            </asp:Repeater>

                        
                          
                      
                        </div>
                    </div>
                </div>






             <div class="col-lg-12">
                    <div class="card">
                        
                        <div class="card-header">
                            <center>
                            <strong class="card-title"> COMPUTER SCEIENCE BOOKS</strong></center>
                            </div>
                       
                        <div class="card-body">

                            <asp:Repeater ID="r2" runat="server">
                                <HeaderTemplate>

                                     <table class="table">
                              <thead>
                                <tr>
                                  
                                  <th scope="col">SERIAL NO</th>
                                  <th scope="col">ROLL NO</th>
                                  <th scope="col">LG NO</th>
                                  <th scope="col">SUBJECT</th>
                                  <th scope="col">BOOK NAME</th>
                                  <th scope="col">AUTHOR NAME</th>
                                  <th scope="col">CATEGORY</th>
                                  <th scope="col">MBID</th>
                                  <th scope="col">PUBLISHER</th>
                                  <th scope="col">PRICE</th>
                                  <th scope="col">DATE</th>
                                  <th scope="col">STATUS</th>
                                  <th scope="col">BARCODE</th>
                                  <th scope="col">QUANTITY</th>
                                  
                                </tr>
                           </thead>
                           <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>

                            <tr>
                                
                                <td><%#Eval("SERIAL") %></td>
                                <td><%#Eval("RNO") %></td>
                                <td><%#Eval("LGNO") %></td>
                                <td><%#Eval("SUBJECT") %></td>
                                <td><%#Eval("BNAME") %></td>
                                <td><%#Eval("ANAME") %></td>
                                <td><%#Eval("CATEGORY") %></td>
                                <td><%#Eval("MBID") %></td>
                                <td><%#Eval("PUBLISHER") %></td>
                                <td><%#Eval("PRICE") %></td>
                                <td><%#Eval("DATE") %></td>
                                <td><%#Eval("STATUS") %></td>
                                <td><%#Eval("BARCODE") %></td>
                                <td><%#Eval("QUANTITY") %></td>

                                                             
                          </tr>

                                </ItemTemplate>
                                <FooterTemplate>

  
                                   </tbody>
                                   </table>

                                </FooterTemplate>

                            </asp:Repeater>

                        
                          
                      
                        </div>
                    </div>
                </div>
                   
   
  

    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <center>
                            <strong class="card-title">GIFT BOOKS</strong></center>
                            </div>
                        <div class="card-body">

                            <asp:Repeater ID="r3" runat="server">
                                <HeaderTemplate>

                                     <table class="table">
                              <thead>
                                <tr>
                                  <th scope="col">SERIAL NO</th>
                                  <th scope="col">ROLL NO</th>
                                  <th scope="col">LG NO</th>
                                  <th scope="col">SUBJECT</th>
                                  <th scope="col">BOOK NAME</th>
                                  <th scope="col">AUTHOR NAME</th>
                                  <th scope="col">CATEGORY</th>
                                  <th scope="col">MBID</th>
                                  <th scope="col">PUBLISHER</th>
                                  <th scope="col">PRICE</th>
                                  <th scope="col">DATE</th>
                                  <th scope="col">STATUS</th>
                                  <th scope="col">BARCODE</th>
                                  <th scope="col">QUANTITY</th>
                                  
                              </tr>
                           </thead>
                           <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>

                            <tr>
                                <td><%#Eval("SERIAL") %></td>
                                <td><%#Eval("RNO") %></td>
                                <td><%#Eval("LGNO") %></td>
                                <td><%#Eval("SUBJECT") %></td>
                                <td><%#Eval("BNAME") %></td>
                                <td><%#Eval("ANAME") %></td>
                                <td><%#Eval("CATEGORY") %></td>
                                <td><%#Eval("MBID") %></td>
                                <td><%#Eval("PUBLISHER") %></td>
                                <td><%#Eval("PRICE") %></td>
                                <td><%#Eval("DATE") %></td>
                                <td><%#Eval("STATUS") %></td>
                                <td><%#Eval("BARCODE") %></td>
                                <td><%#Eval("QUANTITY") %></td>

                             
                          </tr>

                                </ItemTemplate>
                                <FooterTemplate>

  
                                   </tbody>
                                   </table>

                                </FooterTemplate>

                            </asp:Repeater>

                        
                          
                      
                        </div>
                    </div>
                </div>
   
    

    <script type="text/javascript">
        $(document).ready(function () {
            $('#example').DataTable({ "pagingType": "full_numbers" });
        });
    </script>
   </asp:Content>