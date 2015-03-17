using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CountryInformationSystemInWebForm.Startup))]
namespace CountryInformationSystemInWebForm
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
