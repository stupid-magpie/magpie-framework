const std = @import("std");
const sdl3 = @import("sdl3");

const allocator = std.heap.c_allocator;

pub const Window = struct {
    sdl_window: sdl3.video.Window,
    allocator: std.mem.Allocator,

    pub fn create(alloc: std.mem.Allocator, title: [:0]const u8, width: u32, height: u32) !*Window {
        const sdl_window = try sdl3.video.Window.init(title, width, height, .{});
        const self = try alloc.create(Window);
        self.* = .{
            .sdl_window = sdl_window,
            .allocator = allocator,
        };
        return self;
    }
};
