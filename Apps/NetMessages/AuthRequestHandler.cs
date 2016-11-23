using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NMsg
{
    public class AuthRequestHandler : MessageHandler
    {
        public Type HandlesType { get { return typeof(AuthRequest); } }
        public NMsg Process(NMsg inMsg)
        {
            return new AuthResult()
            {
                status = true,
                bearerToken = "foobar",
                location = "@00000000_00000000_00000000"
            };
        }
    }
}
