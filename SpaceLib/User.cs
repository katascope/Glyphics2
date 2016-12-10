using System;
using System.Security.Cryptography;
using System.Text;

namespace SpaceLib
{
    public class User
    {
        [Flags]
        public enum UserPrivilege
        {
            None = 0,
            Login = 1,
            Chat = 2,
            Play = 3,
            Edit = 4,
            //God = 0xFF
        }
        public Guid id { get; set; }
        public string name { get; set; }
        public string passwordHash { get; set; }
        public string avatarGridName { get; set; }
        public UserPrivilege userPrivilege { get; set; }
        public User(Guid i, string n, string p, string av, UserPrivilege up)
        {
            id = i;
            name = n;
            passwordHash = p;
            avatarGridName = av;
            userPrivilege = up;
        }
        public override string ToString()
        {
            return name + ", " + passwordHash + ", " + avatarGridName;
        }
        public static string CreateTextString(byte[] data)
        {
            // Create a human-readable hexadecimal string from the
            // byte array by walking the array and converting each byte
            // into a 2-digit hexadecimal value.
            StringBuilder sb = new StringBuilder(data.Length * 2);
            for (int i = 0; i < data.Length; ++i)
            {
                sb.AppendFormat("{0:x2}", data[i]);
            }
            return sb.ToString();
        }

        public static string HashPassword(string value)
        {
            byte[] salt = { 1, 2, 3, 6, 5, 4 };
            byte[] values = Hash(value, salt);
            return CreateTextString(values);
        }

        public static byte[] Hash(string value, byte[] salt)
        {
            return Hash(Encoding.UTF8.GetBytes(value), salt);
        }

        public static byte[] Hash(byte[] value, byte[] salt)
        {
            var saltedValue = new byte[value.Length + salt.Length];
            value.CopyTo(saltedValue, 0);
            salt.CopyTo(saltedValue, value.Length);
            return new SHA256Managed().ComputeHash(saltedValue);
        }
    }
}
