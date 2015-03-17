using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CountryInformation.DAL;
using CountryInformaton.DAO;

namespace CountryInformation.BLL
{
   public class CountryManager
    {
       CountryDbGateway aCountryDbGateway =new CountryDbGateway();
       public List<Country> GetAll()
       {
           List<Country> countries = aCountryDbGateway.GetAll();
           foreach (Country aCountry in countries)
           {
               aCountry.NoOfCity = aCountryDbGateway.NoOfCities(aCountry.Id);
               aCountry.NoOfDwellers = aCountryDbGateway.NoOfDwellers(aCountry.Id);
           }
          return countries;

       }

       public string Save(Country aCountry)
       {
           if (aCountryDbGateway.GetAll().FirstOrDefault(a => a.Name == aCountry.Name) == null)
           {
               aCountryDbGateway.Save(aCountry);
               return "Successfully Saved";
           }
           else
           {
               return "Already Exists";
           }
       }
    }
}
