#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System;
using System.IO;
using System.Collections;
using System.Collections.Generic;
using Newtonsoft.Json;

namespace SpaceLib
{
    public class Users : IEnumerable<User>
    {
        public List<User> users = new List<User>();
        public bool Add(User user)
        {
            if (!users.Contains(user))
            {
                users.Add(user);
                return false;
            }
            return true;
        }

        public bool Remove(string name)
        {
            User user = FindUser(name);
            if (name != null)
            {
                users.Remove(user);
                return false;
            }
            return true;
        }

        public void Display()
        {
            Console.WriteLine("\nUsers");
            foreach (User user in users)
                Console.WriteLine(user);
        }
        public void WriteToFile(string filename)
        {
            string serializedUsers = Newtonsoft.Json.JsonConvert.SerializeObject(users, Formatting.Indented);

            using (StreamWriter outputFile = new StreamWriter(filename, false))
            {
                outputFile.WriteLine(serializedUsers);
            }
        }

        public void ReadFromFile(string filename)
        {
            using (StreamReader inputFile = new StreamReader(filename))
            {
                string input = inputFile.ReadToEnd();
                Console.WriteLine("Users:\n{0}", input);
                users = Newtonsoft.Json.JsonConvert.DeserializeObject<List<User>>(input);
            }
        }

        public User FindUser(string name)
        {
            foreach (User user in users)
                if (user.name == name) return user;
            return null;
        }

        public bool Authenticate(string name, string password)
        {
            User user = FindUser(name);

            if (user == null)
                return false;

            if ((user.userPrivilege & User.UserPrivilege.Login) != User.UserPrivilege.Login)
                return false;

            return (User.HashPassword(password) == user.passwordHash);
        }

        #region Implementation of IEnumerable
        public IEnumerator<User> GetEnumerator()
        {
            return users.GetEnumerator();
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return GetEnumerator();
        }
        #endregion
    }
}

