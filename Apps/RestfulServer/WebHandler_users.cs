using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SpaceLib;

namespace WebServer
{
    class WebHandler_users : IWebHandler
    {
        public string GetResponse(string query)
        {
            string response = "";

            foreach (User user in WebServer.users.users)
            {
                response += user.name + " privs=(" + user.userPrivilege + ")<br>\n";
            }
            return response;
        }
    }
}
