using BffExample.Models;
using BffExample.Services;
using Microsoft.AspNetCore.Mvc;

namespace BffExample.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class HelloController : ControllerBase
    {
        private readonly IHelloService _helloService;

        public HelloController(IHelloService helloService)
        {
            _helloService = helloService;
        }

        [HttpGet]
        public ActionResult<HelloModel> Get()
        {
            var result = _helloService.GetHelloMessage();
            return Ok(result);
        }
    }
}
