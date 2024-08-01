<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1"  %>

<!DOCTYPE html>
<link rel="stylesheet" href="StyleSheet.css" type="text/css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script runat="server">
    
  
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
 
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="empID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="empID" HeaderText="empID" ReadOnly="True" SortExpression="empID" />
                    <asp:BoundField DataField="empName" HeaderText="empName" SortExpression="empName" />
                    <asp:BoundField DataField="empSalary" HeaderText="empSalary" SortExpression="empSalary" />
                    <asp:BoundField DataField="empDest" HeaderText="empDest" SortExpression="empDest" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbConn %>" SelectCommand="SELECT * FROM [EmployeeT]"></asp:SqlDataSource>
            <br />
            <div class="wrap" style="width:300px" >
            <asp:Button ID="Button3" CssClass="button" runat="server" OnClick="Button3_Click" OnClientClick="return navigate()" Text="HIDE" />
            </div>
            
            <br />
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
    <div>
        <table style="font-family:Arial">
            <tr>
                <td colspan="2" class="auto-style1">Employee Details</td>
            </tr>
            <tr>
            <td>First Name:</td>  
                <td> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> </td> 
            </tr>
            <tr>
<td>Last Name:</td>  
    <td> <asp:TextBox ID="TextBox3" runat="server" ToolTip="Enter Last Name"></asp:TextBox> </td> 

</tr>
            <tr>
                <td>City</td>
<td>
    <asp:DropDownList ID="ddlCity" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="height: 22px"></asp:DropDownList></td>
            </tr>
<tr>
    <td>

    </td>
      <td>
          <asp:Button ID="ButtonSubmit" runat="server" Text="Submit Employee" />
  </td>
</tr>            

            
        </table>

    </div>
   
        


        <br />
   
        


        <br />
   
     <div>
<fieldset style="width:300px">
    <legend><b>Gender</b></legend>
    <asp:RadioButton ID="MaleRadioBtn" Text="Male" runat="server" GroupName="GenderGroup"></asp:RadioButton>
    <asp:RadioButton ID="FemaleRadioBtn" Text="Female" runat="server" GroupName="GenderGroup"></asp:RadioButton>
    <asp:RadioButton ID="UnknownRadioBtn" Text="Unkown" runat="server" GroupName="GenderGroup"></asp:RadioButton>
</fieldset>

         <br />
         <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />

     <div>
<fieldset style="width:300px">
    <legend><b>Education</b></legend>
    <asp:CheckBox ID="GraduateCheckBox" runat="server" Text="Graduate"  />
    <asp:CheckBox ID="PostGraduateCheckBox" runat="server" Text="Post Graduate" />
    <asp:CheckBox ID="DoctrateCheckBox" runat="server" Text="Doctrate" />
</fieldset>

         <br />
         
     </div> 

         <br />

     </div>   

        <asp:Button ID="PostGraduateBtn" runat="server" OnClick="PostGraduateBtn_Click1" Text="Button" />

       <div name="divnav" class="divn" id="divnavv">
           <fieldset style="width:300px" id="f1" name="f11">
    <legend id="legend1"><b>Where You want to GO</b></legend>
               <asp:RadioButtonList ID="RadioListSelection" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged1">
                   <asp:ListItem Text="Google" Value="Google"></asp:ListItem>
                   <asp:ListItem Text="Youtube" Value="Youtube" ></asp:ListItem>
               </asp:RadioButtonList>


</fieldset>
           <asp:Button ID="ChangeLinkBtn" runat="server" OnClick="Button3_Click" Text="Change The Hyperlink" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" CssClass="hlink" runat="server" NavigateUrl="www.google.com.pk">Select First</asp:HyperLink>

           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <br />
           <asp:DropDownList ID="DropDownList1" runat="server">
           </asp:DropDownList>
           <br />

       </div>
        <p>
            &nbsp;</p>

    </form>
</body>
</html>
