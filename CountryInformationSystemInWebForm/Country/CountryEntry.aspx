<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CountryEntry.aspx.cs" Inherits="CountryInformationSystemInWebForm.Country.CountryEntry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="~/Content/bootstrap.css" rel="stylesheet" />
    
    <title>Save</title>
     <style type="text/css">
         .auto-style2 {
             width: 50px;
         }
     </style>
</head>
<body>
    <ul runat="server" class="list-inline">
        <li><a href="CountryEntry.aspx">Country Entry</a></li>
        <li><a href="../City/CityEntry.aspx">City Entry</a></li>
        <li><a href="ViewCountries.aspx">View Countries</a></li>
        <li><a href="../City/ViewCities.aspx"">View Cities</a></li>
    </ul>
    <p class="alert-success" id="message" runat="server"></p>
     <p class="alert-danger" id="alert" runat="server"></p>
<form runat="server" id="form1" >
        <div>
            <table class="table-bordered">
                <tr>
                    <td>
                        Country Name
                    </td>
                    <td>
                        <asp:TextBox ID="nameTextBox" runat="server" Width="263px"></asp:TextBox>
                    </td>
                    
                   
                    <td class="auto-style2"></td>
                </tr>

        <tr>
            <td>
                About Country
            </td>
            <td>
              <asp:TextBox ID="aboutTextBox" runat="server" Width="260px" Height="88px" TextMode="MultiLine"></asp:TextBox>
            </td>


            <td class="auto-style2"></td>
        </tr>
                <tr>
                    <td>
                        Image
                    </td>
                    <td>
                        <asp:FileUpload ID="imageFileUpload" runat="server" />
                    
                    </td>
                    <td class="auto-style2">
                        &nbsp;<asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" /></td>
                </tr>

            </table>
        </div>
<asp:GridView ID="showGridView"  runat="server" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="showGridView_PageIndexChanging" PageSize="4" >
    <Columns>
        <asp:TemplateField HeaderText="Serial No">
            <ItemTemplate>
                <asp:TextBox ID="serialTextBox" runat="server" Text='<%# Eval("Id") %>'></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Name">   <ItemTemplate>
                <asp:TextBox ID="nameShowTextBox" runat="server" Text='<%# Eval("Name") %>'></asp:TextBox>
            </ItemTemplate></asp:TemplateField>
        <asp:TemplateField HeaderText="About">
               <ItemTemplate>
                <asp:TextBox ID="aboutShowTextBox" runat="server" TextMode="MultiLine" Text='<%# Eval("About") %>'></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
        </asp:GridView>
    </form>
    
            
    
 
          
  

</body>
</html>

