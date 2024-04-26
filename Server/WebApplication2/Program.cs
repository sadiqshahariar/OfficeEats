


using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Http;
using System.Collections.Generic;
using System.Net.WebSockets;
using System.Text;
using System.Threading.Tasks;

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddSingleton<ChatService>();
var app = builder.Build();
app.UseWebSockets();

app.MapGet("/", async (HttpContext context, ChatService chatService) =>
{
    if (context.WebSockets.IsWebSocketRequest)
    {
        var webSocket = await context.WebSockets.AcceptWebSocketAsync();
        await chatService.HandleWebSocketConnection(webSocket);
    }
    else
    {
        context.Response.StatusCode = 400;
        await context.Response.WriteAsync("Expected a WebSocket request");
    }
});

app.Run();

public class ChatService
{
    private readonly List<WebSocket> _sockets = new();

    public async Task HandleWebSocketConnection(WebSocket socket)
    {
        _sockets.Add(socket);
        var buffer = new byte[1024 * 2];
        while (socket.State == WebSocketState.Open)
        {
            var result = await socket.ReceiveAsync(new ArraySegment<byte>(buffer), default);
            if (result.MessageType == WebSocketMessageType.Close)
            {
                await socket.CloseAsync(result.CloseStatus.Value, result.CloseStatusDescription, default);
                break;
            }

            // Decode the received message
            var message = Encoding.UTF8.GetString(buffer, 0, result.Count);

            // Broadcast the form data to all connected clients
            foreach (var s in _sockets)
            {
                if (s != socket && s.State == WebSocketState.Open)
                {
                    var responseBytes = Encoding.UTF8.GetBytes($"Received: {message}");
                    await s.SendAsync(new ArraySegment<byte>(responseBytes), WebSocketMessageType.Text, true, default);
                }
            }
        }
        _sockets.Remove(socket);
    }
}

