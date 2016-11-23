using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NMsg
{
    public class LocRequestHandler : MessageHandler
    {
        public Type HandlesType { get { return typeof(LocRequest); } }
        public NMsg Process(NMsg inMsg)
        {
            return new LocResult()
            {
                locRects = "*UUU@05000@0h00ih0J00K@0@010@1b01cb1Q01R@1@*vvv@06i0iJ0ri0si0so0sJ0si0tJ0Jc1cs1hz1cP1hc1ig1JL1iP1Jc1KP1Qd2cr8hA2cO8hd2igcJL2iOcJk2tm2ud2KOcQk3vm3vk4wm4xk5ym5yk6zm6Ak7Bm7Ck8Dm8Dd9cs9hz9cO9hk9Em9FdacOchkaGmaGkbHmbIkcJmcJddcOdcddPOdQ*UUU@06K0i@0Jj0sn1st1cy1hQ1c@1Qh1ihcJK1iKcJc2cccQs2cs8hz2cz8hP2cPcQj2tj2un2tn2uj3vj3vn3vn3vj4wj4xn4wn4xj5yj5yn5yn5yj6zj6An6zn6Aj7Bj7Cn7Bn7Cj8Dj8Dn8Dn8Dt9cy9hj9Ej9Fn9En9FjaGjaGnaGnaGjbHjbInbHnbIjcJjcJncJncJcdccdcPdcPdccddPdhcdihdJKdiPdJcdKPdOcdPcdQPdPPdQcecPeccedceOPedPeOcePPeQ"
            };
        }
    }
}
