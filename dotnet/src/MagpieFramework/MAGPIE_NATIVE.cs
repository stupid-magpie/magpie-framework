using System.Runtime.InteropServices;

namespace Magpie.Native
{
    public static partial class MAGPIE
    {
        [DllImport("magpie_native", CallingConvention = CallingConvention.Cdecl, EntryPoint = "hello", ExactSpelling = true)]
        public static extern void hello();
    }
}
