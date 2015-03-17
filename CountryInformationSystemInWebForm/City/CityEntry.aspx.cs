using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CountryInformation.BLL;

namespace CountryInformationSystemInWebForm.City
{
    public partial class CityEntry : System.Web.UI.Page
    {
        CityManager aCityManager = new CityManager();
        CountryManager aCountryManager = new CountryManager();
        protected void Page_Load(object sender, EventArgs e)
        {

            showGridView.DataSource = aCityManager.GetAll().OrderBy(a => a.Name).ToList();
            showGridView.DataBind();
            if (!IsPostBack)
            {
                CountryDropDownList.DataSource = aCountryManager.GetAll();
                CountryDropDownList.DataValueField = "Id";
                CountryDropDownList.DataTextField = "Name";
                CountryDropDownList.DataBind();
            }
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            CountryInformaton.DAO.City aCity = new CountryInformaton.DAO.City();
            aCity.Name = nameTextBox.Text;
            aCity.About = aboutTextBox.Text;
            aCity.NoOfDwellers = Convert.ToInt32(noOfDwellersTextBox.Text);
            aCity.Location = locationTextBox.Text;
            aCity.Weather = weatherTextBox.Text;
            aCity.CountryId = Convert.ToInt32(CountryDropDownList.SelectedValue);
            string msg = aCityManager.Save(aCity);
            if (msg == "Successfully Saved")
            {
                message.InnerText = msg;
            }
            else
            {
                alert.InnerText = msg;
            }
            showGridView.DataSource = aCityManager.GetAll().OrderBy(a => a.Name).ToList();
            showGridView.DataBind();
        }

        protected void showGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            showGridView.PageIndex = e.NewPageIndex;
            showGridView.DataBind();
        }
    }
}