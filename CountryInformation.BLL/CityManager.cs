using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CountryInformation.DAL;
using CountryInformaton.DAO;

namespace CountryInformation.BLL
{
   public class CityManager
    {
       CityDbGateway aCityDbGateway=new CityDbGateway();
       public List<City> GetAll()
       {
           return aCityDbGateway.GetAll();
       }

       public string Save(City aCity)
       {
           if (aCityDbGateway.GetAll().FirstOrDefault(a => a.Name == aCity.Name) == null)
           {
               aCityDbGateway.Save(aCity);
               return "Successfully Saved";
           }
           else
           {
               return "Already Exists";
           }
       }
    }
}
