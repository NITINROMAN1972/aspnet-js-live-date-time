using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Live_Day_Date_And_Time.Startup))]
namespace Live_Day_Date_And_Time
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
