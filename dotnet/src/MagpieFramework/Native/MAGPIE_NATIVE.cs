using System.Runtime.InteropServices;

namespace MagpieFramework.Native;

internal partial struct MAGPIE_NATIVE {
    public const string LIB_NAME = "magpie_framework.dll";

    [LibraryImport(LIB_NAME, EntryPoint = "init_sdl")]
    public static partial int InitSDL();    

    internal partial struct WINDOWING {
        [LibraryImport(LIB_NAME, EntryPoint = "create_window")]
        public static partial IntPtr CreateWindow([MarshalAs(UnmanagedType.LPUTF8Str)] string title, int width, int height);
    }
}