using System.Web.Optimization;

namespace SistemaCotizaciones
{
    public class BundleConfig
    {
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new StyleBundle("~/Content/css").Include(
                "~/Content/bootstrap.css",
                "~/CSS/styles.css"));
        }
    }
}