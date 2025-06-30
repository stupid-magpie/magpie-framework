namespace MagpieFramework.Native;

public readonly struct Window {
    internal readonly IntPtr Handle;

    public Window(string title, int width, int height) {
        Handle = MAGPIE_NATIVE.WINDOWING.CreateWindow(title, width, height);

        if(Handle == 0) {
            throw new InvalidOperationException("no windowe");
        }
    }

    public void Dispose() {
        if(Handle != 0) {
            //todo disposal
        }
    }
}