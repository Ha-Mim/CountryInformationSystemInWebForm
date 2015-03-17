using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CountryInformation.BLL;

namespace CountryInformationSystemInWebForm.City
{
    public partial class ViewCities : System.Web.UI.Page
    {
        CityManager aCityManager=new CityManager();
        CountryManager aCountryManager=new CountryManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            showGridView.DataSource = aCityManager.GetAll();
            showGridView.DataBind();
            if (!IsPostBack)
            {
                countryDropDownList.DataSource = aCountryManager.GetAll();
                countryDropDownList.DataValueField = "Id";
                countryDropDownList.DataTextField = "Name";
                countryDropDownList.DataBind();
            }
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            if (CityRadioButton.Checked)
            {
                string name = nameTextBox.Text;
                showGridView.DataSource = aCityManager.GetAll().Where(a => a.Name.ToLower().Contains(name.ToLower())).ToList();
                showGridView.DataBind();
            }
            if (CountryRadioButton.Checked)
            {
                int id = Convert.ToInt32(countryDropDownList.SelectedValue);
                showGridView.DataSource = aCityManager.GetAll().Where(a => a.CountryId == id).ToList();
                showGridView.DataBind();
            }
        }

        protected void showGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            showGridView.PageIndex = e.NewPageIndex;
            showGridView.DataBind();
        }
    }
}