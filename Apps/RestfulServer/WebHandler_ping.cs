using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebServer
{
    class WebHandler_ping : IWebHandler
    {
        public string GetResponse(string query)
        {
            string response = "<title>Ping Pong</title><body>Ping, Pong, Ping Pong</body>";
            return response;
        }
    }
}
