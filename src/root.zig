//! By convention, root.zig is the root source file when making a library. If
//! you are making an executable, the convention is to delete this file and
//! start with main.zig instead.
const std = @import("std");
const sdl3 = @import("sdl3");

const testing = std.testing;

pub export fn fuck() void {
    std.debug.print("FUCKKK!!", .{});
}

export fn init_sdl() c_int {
    const init_flags = sdl3.InitFlags{ .video = true, .events = true };

    sdl3.init(init_flags) catch |err| {
        std.debug.print("SDL Init failed: {any}\n", .{err});
        return -1;
    };

    return 0;
}

pub export fn add(a: i32, b: i32) i32 {
    return a + b;
}

test "basic add functionality" {
    try testing.expect(add(3, 7) == 10);
}
