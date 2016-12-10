using System;
using SpaceLib;

namespace WebServer
{
    class Test
    {
        static void Test_Users_Authenticate_Good()
        {
            Users users = new Users();
            users.Add(new User(Guid.NewGuid(), "John Doe", User.HashPassword("pwdTest"), "whatev", User.UserPrivilege.Login));
            users.Add(new User(Guid.NewGuid(), "Jane Doe", User.HashPassword("testPwds"), "whatev", User.UserPrivilege.Login));
            Console.WriteLine("Auth result: " + users.Authenticate("John Doe", "pwdTest"));
        }
        static void Test_Users_Authenticate_NoUser()
        {
            Users users = new Users();
            users.Add(new User(Guid.NewGuid(), "John Doe", User.HashPassword("pwdTest"), "whatev", User.UserPrivilege.Login));
            users.Add(new User(Guid.NewGuid(), "Jane Doe", User.HashPassword("testPwds"), "whatev", User.UserPrivilege.Login));
            Console.WriteLine("Auth result: " + users.Authenticate("Brock Samson", "pwdTest"));
        }
        static void Test_Users_Authenticate_NoPrivilege()
        {
            Users users = new Users();
            users.Add(new User(Guid.NewGuid(), "John Doe", User.HashPassword("pwdTest"), "whatev", User.UserPrivilege.None));
            users.Add(new User(Guid.NewGuid(), "Jane Doe", User.HashPassword("testPwds"), "whatev", User.UserPrivilege.Login));
            Console.WriteLine("Auth result: " + users.Authenticate("John Doe", "pwdTestBad"));
        }
        static void Main2(string[] args)
        {
            Test_Users_Authenticate_Good();
            Test_Users_Authenticate_NoUser();
            Test_Users_Authenticate_NoPrivilege();

            Users users = new Users();
            users.Add(new User(Guid.NewGuid(), "god", User.HashPassword("godlike"), "whatev", User.UserPrivilege.Login));
            users.Add(new User(Guid.NewGuid(), "Jane Doe", User.HashPassword("testPwds"), "whatev", User.UserPrivilege.Login));
            users.WriteToFile("\\github\\glyphics2\\site\\users.json");
            users.ReadFromFile("\\github\\glyphics2\\site\\users.json");

            users.Add(new User(Guid.NewGuid(), "fnord", User.HashPassword("fnord"), "fnord", User.UserPrivilege.Edit));
            users.Display();
            users.Remove("fnord");
            users.Display();

            string str = User.HashPassword("fnord");
            Console.WriteLine(str);

            UpdateMessage.ConstructUpdate();
        }
    }
}

