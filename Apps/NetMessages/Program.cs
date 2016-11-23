using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NMsg
{
    class Program
    {
        static void Main(string[] args)
        {
            MessageDispatcher serverDispatcher = new MessageDispatcher();
            serverDispatcher.AddHandler(new AuthRequestHandler());
            serverDispatcher.AddHandler(new LocRequestHandler());

            MessageDispatcher clientDispatcher = new MessageDispatcher();
            clientDispatcher.AddHandler(new AuthResultHandler());
            clientDispatcher.AddHandler(new LocResultHandler());

            AuthRequest nm_as = new AuthRequest() { name = "test", password = "pwd" };
            NMsg msg = serverDispatcher.Dispatch(nm_as);
            if (msg != null) msg = clientDispatcher.Dispatch(msg);
            if (msg != null) msg = serverDispatcher.Dispatch(msg);
            if (msg != null) msg = clientDispatcher.Dispatch(msg);
            if (msg != null) msg = serverDispatcher.Dispatch(msg);
        }
    }
}