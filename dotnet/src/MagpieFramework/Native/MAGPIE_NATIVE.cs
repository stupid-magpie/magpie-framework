using System.Runtime.InteropServices;

namespace MagpieFramework.Native;

public static partial class MAGPIE_NATIVE
{
    public const string LIB_NAME = "magpie_framework.dll";

    [LibraryImport(LIB_NAME, EntryPoint = "init_sdl")]
    public static partial int InitSDL();    
}