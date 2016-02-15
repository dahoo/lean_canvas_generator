guard :shell do
  watch(/(.*).md/) {|m| `ruby lean_canvas_generator.rb #{m[0]}` }
end
