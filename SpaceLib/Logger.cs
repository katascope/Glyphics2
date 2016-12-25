/*
 * Implementation of a generalized logger class
 * Copyright Layne Thomas 2014
 */

using System;
using System.Diagnostics;
using System.Globalization;
using System.IO;

namespace SpaceLib
{
    public class Logger
    {
        private static string _curFilename;
        // File handle
        private static StreamWriter _outfile;

        // Open log file for writing
        public static bool Open(string filename, bool append)
        {
            _curFilename = filename;

            if (_outfile == null)
            {
                _outfile = new StreamWriter(filename, append);
            }
            return false;
        }

        // Close the log file handle
        public static bool Close()
        {
            if (_outfile != null)
                _outfile.Close();
            _outfile = null;
            return false;
        }

        // Obtain date & time stamp
        private static string GetTimestampForRightNow()
        {
            DateTime dtNow = DateTime.Now;
            return dtNow.ToString("yyyy-MM-dd hh:mm:ss");
        }

        // Log a normal message
        static public void Print(string message)
        {
            if (_curFilename == null)
                return;

            Open(_curFilename, true);
            string logMessage = "["+GetTimestampForRightNow() + "] " + message;
            Console.WriteLine(logMessage);
            _outfile.WriteLine(logMessage);
            Close();

        }

        // Log an extended message
        static public void Debug(string message)
        {
            var stackFrame = new StackFrame(1, true);
            string fileName = stackFrame.GetFileName() ?? string.Empty;
            string fileLineNumber = stackFrame.GetFileLineNumber().ToString(CultureInfo.InvariantCulture);
            var declaringType = stackFrame.GetMethod().DeclaringType;
            if (declaringType != null)
            {
                string type = declaringType.ToString();
                string method = stackFrame.GetMethod().Name;
                string extendedMessage = fileName + ":" + fileLineNumber + " " + " (" + type + ":" + method + ") " + message;
                Print(extendedMessage);
            }
        }
    }

}