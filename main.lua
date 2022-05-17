io.stdout: setvbuf('no')


love.graphics.setDefaultFilter("nearest")

if arg[#arg] == "-debug" then require("mobdebug").start() end

local img

--This function is called only once when the application is started.
function love.load()
  img = love.graphics.newImage("images/heros.png")
end
  
--this function is called once per frame
function love.update(dt)
    
end
  
--this function is used for display guidelines and she is called once per frame
function love.draw()
    --for display the hero with the function img
    love.graphics.draw(img,100,100)
end