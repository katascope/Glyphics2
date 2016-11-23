using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NMsg
{
    public class AuthResultHandler : MessageHandler
    {
        public Type HandlesType { get { return typeof(AuthResult); } }
        public NMsg Process(NMsg inMsg)
        {
            AuthResult authMsg = (AuthResult)inMsg;
            Console.WriteLine("Got result " + authMsg.status);
            Console.WriteLine("Location " + authMsg.location);

            LocRequest outMsg = new LocRequest()
            {
                location = authMsg.location
            };
            return outMsg;
        }
    }
}
