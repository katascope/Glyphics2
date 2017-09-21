using System;
using System.IO;
using System.Security.Permissions;
using RasterLib;
using RasterLib.Language;
using GraphicsLib;

namespace WebServer
{
    class FileChangeTracker
    {
        [PermissionSet(SecurityAction.Demand, Name = "FullTrust")]
        public static void Run(string path, string extension)
        {
            // Create a new FileSystemWatcher and set its properties.
            FileSystemWatcher watcher = new FileSystemWatcher();
            watcher.Path = path;
            /* Watch for changes in LastAccess and LastWrite times, and
               the renaming of files or directories. */
            watcher.NotifyFilter = NotifyFilters.LastAccess | NotifyFilters.LastWrite | NotifyFilters.FileName | NotifyFilters.DirectoryName;
            // Only watch text files.
            watcher.Filter = extension;// "*.txt";

            // Add event handlers.
            watcher.Changed += new FileSystemEventHandler(OnChanged);
            watcher.Created += new FileSystemEventHandler(OnChanged);
            watcher.Deleted += new FileSystemEventHandler(OnChanged);

            // Begin watching.
            watcher.EnableRaisingEvents = true;            
        }

        // Define the event handlers.
        private static void OnChanged(object source, FileSystemEventArgs e)
        {
            // Specify what is done when a file is changed, created, or deleted.
            Console.WriteLine("File: " + e.FullPath + " " + e.ChangeType);

            
            string filename = Path.GetFileNameWithoutExtension(e.FullPath);

            CompiledCode existingCode = WebServer.digest.FindByName(filename);

            WebServer.digest.codes.Remove(existingCode);

            string rootFolder = Directory.GetCurrentDirectory();
            Directory.SetCurrentDirectory(WebServer.coreFolder);
            int result = CodeCompiler.Analyze("./"+filename+".glyc", WebServer.digest, WebServer.digestOutputPath, DownSolver.enables.DoRects);
            Directory.SetCurrentDirectory(rootFolder);

        }
    }
}
