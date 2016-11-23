using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NMsg
{
    public class LocResultHandler : MessageHandler
    {
        public Type HandlesType { get { return typeof(LocResult); } }
        public NMsg Process(NMsg inMsg)
        {
            LocResult locMsg = (LocResult)inMsg;
            Console.WriteLine("LocData " + locMsg.locRects);
            return null;
        }
    }
}
