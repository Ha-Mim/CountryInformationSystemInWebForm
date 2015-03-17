<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CityEntry.aspx.cs" Inherits="CountryInformationSystemInWebForm.City.CityEntry" %>

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
    <p class="alert-success" id="message" runat="server"></p>
    <p class="alert-danger" id="alert" runat="server"></p>
    <form id="form1" runat="server">
        <div>
            <div>
                <table class="table-bordered">
                    <tr>
                        <td>Name
                        </td>
                        <td>
                            <asp:TextBox ID="nameTextBox" runat="server" Width="263px"></asp:TextBox>
                        </td>
                    <td class="auto-style2"></td>
                    </tr>
                    <tr>
                        <td>About City
                        </td>
                        <td>
                            <asp:TextBox ID="aboutTextBox" runat="server" Width="260px" Height="88px" TextMode="MultiLine"></asp:TextBox>
                        </td>

                        <td class="auto-style2"></td>
                    </tr>
                    <tr>
                        <td>No of Dwellers
                        </td>
                        <td>
                            <asp:TextBox ID="noOfDwellersTextBox" runat="server" Width="261px"></asp:TextBox>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Location</td>
                        <td>
                             <asp:TextBox ID="locationTextBox" runat="server" Width="261px"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td>Weather</td>
                        <td>
                             <asp:TextBox ID="weatherTextBox" runat="server" TextMode="MultiLine" Height="72px" Width="261px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Country
                        </td>
                        <td>
                            <asp:DropDownList ID="CountryDropDownList" runat="server" Height="17px" Width="265px"></asp:DropDownList>
                        </td>
                        <td class="auto-style2">&nbsp;<asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" /></td>
                    </tr>

                </table>
            </div>
        </div>
        <asp:GridView runat="server" ID="showGridView" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="showGridView_PageIndexChanging" PageSize="4">
            <Columns>
                <asp:TemplateField HeaderText="Serial">
                    <ItemTemplate>
                        <asp:TextBox ID="idTextBox" runat="server" Text='<%# Eval("Id") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Eval("Name") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="No of dwellers">
                    <ItemTemplate>
                        <asp:TextBox ID="noOfDwellersTextBox" runat="server" Text='<%# Eval("NoOfDwellers") %>'></asp:TextBox>
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
