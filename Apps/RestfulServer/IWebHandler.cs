using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebServer
{
    interface IWebHandler
    {
        string GetResponse(string query);
    }
}
