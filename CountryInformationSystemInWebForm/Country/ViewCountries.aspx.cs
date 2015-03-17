using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CountryInformation.BLL;

namespace CountryInformationSystemInWebForm.Country
{
    public partial class ViewCountries : System.Web.UI.Page
    {
        CountryManager aCountryManager=new CountryManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            showGridView.DataSource=aCountryManager.GetAll();
            showGridView.DataBind();

        }

        protected void showGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            showGridView.PageIndex = e.NewPageIndex;
            showGridView.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = nameTextBox.Text;
            showGridView.DataSource = aCountryManager.GetAll().Where(a => a.Name.ToLower().Contains(name.ToLower())).ToList();
            showGridView.DataBind();
        }
    }
}