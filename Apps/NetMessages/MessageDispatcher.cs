using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NMsg
{
    class MessageDispatcher
    {
        Dictionary<string, MessageHandler> dispatchTable = new Dictionary<string, MessageHandler>();
        public NMsg Dispatch(NMsg nm)
        {
            MessageHandler msgHandler = dispatchTable[nm.type];
            return msgHandler.Process(nm);
        }
        public void AddHandler(MessageHandler mh)
        {
            string name = mh.HandlesType.ToString();
            dispatchTable.Add(name, mh);
        }
    }
}
