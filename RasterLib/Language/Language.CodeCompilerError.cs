using System;

namespace RasterLib.Language
{
    public class CodeCompilerError
    {
        public enum Severity { None, Ok, Error, Warning };
        public string filename;
        public int line;
        public Severity severity = Severity.None;
        public string msg;
        public CodeCompilerError(string f, int l, string m, Severity s)
        {
            filename = f;
            line = l;
            msg = m;
            severity = s;
        }
        public override string ToString()
        {
            return String.Format(" {0}({1}): {2}: {3}", filename, line, severity, msg);
        }
    }
}
