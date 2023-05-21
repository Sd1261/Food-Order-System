using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Food.Startup))]
namespace Food
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
