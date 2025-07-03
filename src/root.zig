const std = @import("std");
const sdl3 = @import("sdl3");
const magpieWindow = @import("windowing/window.zig");

const allocator = std.heap.c_allocator;
const OpaqueWindow = *anyopaque;

pub export fn init_sdl() c_int {
    const init_flags = sdl3.InitFlags{ .video = true, .events = true };

    sdl3.init(init_flags) catch |err| {
        std.debug.print("SDL Init failed: {any}\n", .{err});
        return -1;
    };

    return 0;
}

pub export fn create_window(
    title_ptr: [*c]const u8,
    width: u32,
    height: u32,
) ?OpaqueWindow {
    const title_slice = std.mem.sliceTo(title_ptr, 0);
    const win = magpieWindow.Window.create(allocator, title_slice, @intCast(width), @intCast(height)) catch |err| {
        std.debug.print("Failed to create window: {any}\n", .{err});
        return null;
    };
    return win;
}
