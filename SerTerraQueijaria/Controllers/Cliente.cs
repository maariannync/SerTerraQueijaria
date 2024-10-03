using Microsoft.AspNetCore.Mvc;

namespace SerTerraQueijaria.Controllers
{
    public class Cliente : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
