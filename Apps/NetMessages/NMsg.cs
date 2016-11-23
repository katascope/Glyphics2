using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NMsg
{
    public class NMsg
    {
        public string type { get { return GetType().ToString(); } }
    }
    public class AuthRequest : NMsg
    {
        public string name { get; set; }
        public string password { get; set; }
    }
    public class AuthResult : NMsg
    {
        public bool status { get; set; }
        public string bearerToken { get; set; }
        public string location { get; set; }
    }
    public class LocRequest : NMsg
    {
        public string location { get; set; }
    }
    public class LocResult : NMsg
    {
        public string locRects { get; set; }
    }
    public interface MessageHandler
    {
        NMsg Process(NMsg inMsg);
        Type HandlesType { get; }
    }
}
