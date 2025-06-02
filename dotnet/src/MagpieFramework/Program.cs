using System.Runtime.InteropServices;

public static class Program
{
    private const string rust_library_name = "magpie_native";

    [DllImport(rust_library_name, EntryPoint = "hello", CallingConvention = CallingConvention.Cdecl)]
    public static extern void HelloRust();

    public static void Main(string[] args)
    {
        HelloRust();
    }
}