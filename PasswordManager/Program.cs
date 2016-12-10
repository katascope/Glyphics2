using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SpaceLib;

namespace PasswordManager
{
    class Program
    {
        static void Main(string[] args)
        {
            Users users = new Users();
            users.Add(new User(Guid.NewGuid(), "root", User.HashPassword("12345"), "AvatarRoot", (User.UserPrivilege)0xFFFF));
            users.Add(new User(Guid.NewGuid(), "bad", User.HashPassword("bad"), "AvatarPlayer", User.UserPrivilege.None));
            users.Add(new User(Guid.NewGuid(), "nari", User.HashPassword("nari"), "AvatarPlayer", User.UserPrivilege.Login));
            users.WriteToFile("\\github\\glyphics2\\site\\users.json");
            users.ReadFromFile("\\github\\glyphics2\\site\\users.json");

            Console.WriteLine("User list");
            foreach (User user in users)
                Console.WriteLine(user);
        }
    }
}
