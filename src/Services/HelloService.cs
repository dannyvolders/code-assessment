using BffExample.Models;

namespace BffExample.Services
{
    public interface IHelloService
    {
        HelloModel GetHelloMessage();
    }

    public class HelloService : IHelloService
    {
        public HelloModel GetHelloMessage()
        {
            return new HelloModel { Message = "Hello from the BFF service!" };
        }
    }
}
