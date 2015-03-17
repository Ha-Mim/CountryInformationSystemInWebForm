<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCities.aspx.cs" Inherits="CountryInformationSystemInWebForm.City.ViewCities" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
</head>

<body>
     <ul runat="server" class="list-inline">
        <li><a href="../Country/CountryEntry.aspx">Country Entry</a></li>
        <li><a href="CityEntry.aspx">City Entry</a></li>
        <li><a href="../Country/ViewCountries.aspx">View Countries</a></li>
        <li><a href="ViewCities.aspx">View Cities</a></li>
    </ul>
    <form id="form1" runat="server">
    <table>
        <tr>
            <td>
                <asp:RadioButton ID="CityRadioButton" runat="server" />
                 City Name
            </td>
        
        <td>
          <asp:TextBox runat="server" ID="nameTextBox" Height="26px" Width="123px" ></asp:TextBox>  
        </td>
            <td>
                
            </td>
    </tr>
    
    
       <tr>
           <td>
               <asp:RadioButton ID="CountryRadioButton" runat="server" />
              Country
           </td>
       
        <td>
            <asp:DropDownList ID="countryDropDownList" runat="server" Height="26px" Width="123px" ></asp:DropDownList>
        </td>
        <td>
            <asp:Button ID="SearchButton" runat="server" Text="Search" OnClick="SearchButton_Click" />
        </td>
    </tr>
    
    </table>
         <asp:GridView runat="server" ID="showGridView" AllowPaging="True" AutoGenerateColumns="False" PageSize="4" OnPageIndexChanging="showGridView_PageIndexChanging">
            <Columns>
                <asp:TemplateField HeaderText="Serial">
                    <ItemTemplate>
                        <asp:TextBox ID="idTextBox" runat="server" Text='<%# Eval("Id") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="City Name">
                    <ItemTemplate>
                        <asp:TextBox ID="showNameTextBox" runat="server" Text='<%# Eval("Name") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="About">
                    <ItemTemplate>
                        <asp:TextBox ID="aboutTextBox" runat="server" TextMode="MultiLine" Text='<%# Eval("About") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="No of dwellers">
                    <ItemTemplate>
                        <asp:TextBox ID="noOfDwellersTextBox" runat="server" Text='<%# Eval("NoOfDwellers") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Location">
                    <ItemTemplate>
                        <asp:TextBox ID="locationTextBox" runat="server" Text='<%# Eval("Location") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="City Name">
                    <ItemTemplate>
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Eval("Name") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Country">
                    <ItemTemplate>
                        <asp:TextBox ID="countryNameTextBox" runat="server" Text='<%# Eval("Acountry.Name") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
