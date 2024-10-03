using Microsoft.AspNetCore.Mvc;

namespace SerTerraQueijaria.Controllers
{
    public class Gerente : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
