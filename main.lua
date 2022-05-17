io.stdout: setvbuf('no')


love.graphics.setDefaultFilter("nearest")

if arg[#arg] == "-debug" then require("modebug").start() end

