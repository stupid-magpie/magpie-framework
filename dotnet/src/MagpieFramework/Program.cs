using System.Runtime.InteropServices;

public static class Program
{
    [DllImport("magpie_framework.dll", CallingConvention = CallingConvention.Cdecl)]
    public static extern int add(int a, int b);

    public static void Main(string[] args)
    {
        var fuck = add(1, 1900);

        Console.WriteLine(fuck);
    }
}