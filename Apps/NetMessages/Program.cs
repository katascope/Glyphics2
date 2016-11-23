using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Protos
{
    interface NMsg
    {
        string type { get; }
    }
    class NMsgAuthRequest : NMsg
    {
        public string type { get { return GetType().ToString(); } }
        public string name { get; set; }
        public string password { get; set; }
    }
    class NMsgAuthResult : NMsg
    {
        public string type { get { return GetType().ToString(); } }
        public int status { get; set; }
        public string bearerToken { get; set; }
    }
    class Program
    {
        public static NMsg ServerReceive(NMsg nm)
        {
            Console.WriteLine("ServerReceive:" + nm.type);

            if (nm.type == "Protos.NMsgAuthRequest")
            {
                NMsgAuthResult nm_as = new NMsgAuthResult()
                {
                    status = 1,
                    bearerToken = "foobar"
                };
                return nm_as;
            }
            return null;
        }

        public static NMsg ClientReceive(NMsg nm)
        {
            Console.WriteLine("ClientReceive:" + nm.type);

            if (nm.type == "Protos.NMsgAuthResponse")
            {
                Console.WriteLine("Got result");
            }
            return null;
        }

        static void Main(string[] args)
        {
            NMsgAuthRequest nm_as = new NMsgAuthRequest() { name = "test", password = "pwd" };

            string serToken = Newtonsoft.Json.JsonConvert.SerializeObject(nm_as);
            Console.WriteLine("GOt token" + serToken);

            NMsg msg = ServerReceive(nm_as);
            ClientReceive(msg);
        }
    }
}