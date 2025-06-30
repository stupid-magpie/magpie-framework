using System.Runtime.InteropServices;
using MagpieFramework.Native;

public static class Program {
    public static Window WindowHandle;
    
    public static void Main(string[] args){
        var result = MAGPIE_NATIVE.InitSDL();

        if (result == 0){
            Console.WriteLine("sdl initialized successfully");
        }
        else {
            Console.WriteLine("uh oh");
        }

        WindowHandle = new Window("hi", 800, 800) { };
    }
}