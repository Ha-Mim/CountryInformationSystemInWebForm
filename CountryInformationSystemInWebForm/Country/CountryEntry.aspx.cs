using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CountryInformation.BLL;
using CountryInformaton.DAO;

namespace CountryInformationSystemInWebForm.Country
{
    public partial class CountryEntry : System.Web.UI.Page
    {
        CountryManager aCountryManager =new CountryManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            showGridView.DataSource = aCountryManager.GetAll().OrderBy(a=>a.Name).ToList();
            showGridView.DataBind();
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            CountryInformaton.DAO.Country aCountry = new CountryInformaton.DAO.Country();
            aCountry.Name = nameTextBox.Text;
            aCountry.About = aboutTextBox.Text;
            string filePath = Path.GetFileName(imageFileUpload.PostedFile.FileName);
            imageFileUpload.SaveAs(Server.MapPath("~/images/" + filePath));
            aCountry.Imagepath= "~/images/" + filePath;
            string msg=aCountryManager.Save(aCountry);
            if (msg == "Successfully Saved")
            {
                message.InnerText = msg;
            }
            else
            {
                alert.InnerText = msg;
            }
            showGridView.DataSource = aCountryManager.GetAll().OrderBy(a => a.Name);
            showGridView.DataBind();
        }

        protected void showGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            showGridView.PageIndex = e.NewPageIndex;
            showGridView.DataBind();
        }
    }
}