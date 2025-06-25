using Xunit;

namespace BffExample.Tests
{
    public class HelloServiceTests
    {
        [Fact]
        public void GetHelloMessage_ReturnsExpectedMessage()
        {
            // Arrange
            var service = new BffExample.Services.HelloService();

            // Act
            var result = service.GetHelloMessage();

            // Assert
            Assert.NotNull(result);
            Assert.Equal("Hello from the BFF service!", result.Message);
        }
    }
}
