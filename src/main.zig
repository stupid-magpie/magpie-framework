const std = @import("std");
const sdl3 = @import("sdl3");
const lib = @import("magpie_framework_lib");

const SCREEN_WIDTH = 640;
const SCREEN_HEIGHT = 480;

pub fn main() !void {
    const result = lib.init_sdl();
    if (result != 0) {
        std.debug.print("sdl init failed\n", .{});
        return;
    }

    const win = lib.create_window("", 800, 600) orelse {
        std.debug.print("Window creation failed\n", .{});
        return;
    };
    std.debug.print("Window created at address: {any}\n", .{win});
}
