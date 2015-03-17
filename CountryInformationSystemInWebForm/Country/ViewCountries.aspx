<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCountries.aspx.cs" Inherits="CountryInformationSystemInWebForm.Country.ViewCountries" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
     <ul runat="server" class="list-inline">
        <li><a href="../Country/CountryEntry.aspx">Country Entry</a></li>
        <li><a href="../City/CityEntry.aspx">City Entry</a></li>
        <li><a href="ViewCountries.aspx">View Countries</a></li>
        <li><a href="../City/ViewCities.aspx">View Cities</a></li>
    </ul>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>
            
                 City Name
            </td>
        
        <td>
          <asp:TextBox runat="server" ID="nameTextBox" Height="26px" Width="123px" ></asp:TextBox>  
        </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
            </td>
    </tr>
    
    </table>
          <asp:GridView runat="server" ID="showGridView" AllowPaging="True" AutoGenerateColumns="False" PageSize="4" OnPageIndexChanging="showGridView_PageIndexChanging" >
            <Columns>
                <asp:TemplateField HeaderText="Serial">
                    <ItemTemplate>
                        <asp:TextBox ID="idTextBox" runat="server" Text='<%# Eval("Id") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:TextBox ID="showNameTextBox" runat="server" Text='<%# Eval("Name") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="About">
                    <ItemTemplate>
                        <asp:TextBox ID="aboutTextBox" runat="server" TextMode="MultiLine" Text='<%# Eval("About") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="No of Cities">
                    <ItemTemplate>
                        <asp:TextBox ID="noOfCitiesTextBox" runat="server" Text='<%# Eval("NoOfCity") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="No of cities dwellers">
                    <ItemTemplate>
                        <asp:TextBox ID="noOfDwellersTextBox" runat="server" Text='<%# Eval("NoOfDwellers") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
               
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
