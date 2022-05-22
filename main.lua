--allows you to leave traces in the console during operation
io.stdout: setvbuf('no')


--prevents filtering of the edges of images when they are resized
love.graphics.setDefaultFilter("nearest")

--allows you to debug step by step
if arg[#arg] == "-debug" then require("mobdebug").start() end


heros = {}

sprites = {}

--this function is used to create a sprite
function CreateSprite(imageName, positionX, positionY)
  
  sprite = {}
  sprite.x = positionX
  sprite.y = positionY
  sprite.image = love.graphics.newImage("images/"..imageName..".png")
  sprite.w = sprite.image:getWidth()
  sprite.h = sprite.image:getHeight()
  
  table.insert(sprites, sprite)
  
  return sprite
  
end

--This function is called only once when the application is started.
function love.load()
  
  --for difine the window title
  love.window.setTitle("Shootem up")
  --for define the size of the window game
  love.window.setMode(1500,1000)
  
  --for take the width of the window
  width = love.graphics.getWidth()
  --  --for take the height of the window
  height = love.graphics.getHeight()
  
  heros = CreateSprite("heros", width/2, height/2)
  heros.y = height - (heros.h*2)
  
end
  
--this function is called once per frame
function love.update(dt)
  
  if  love.keyboard.isDown("right") and  heros.x < width then
    
    heros.x = heros.x+4
    
  end
  
  if  love.keyboard.isDown("left") and heros.x > 0 then
    
    heros.x = heros.x-4
    
  end  
  
  if  love.keyboard.isDown("up") and heros.y > 0 then
    
    heros.y = heros.y -4
    
  end
  
    if  love.keyboard.isDown("down") and heros.y< height then
    
    heros.y = heros.y+4
    
  end
  
end
  
--this function is used for display guidelines and she is called once per frame
function love.draw()

  local n 
  for n=1, #sprites do
    love.graphics.draw(sprites[n].image, sprites[n].x, sprites[n].y, 0, 2, 2, sprites[n].w/2, sprites[n].h/2)
  end

end

--this function is used for read the keys on the keyboard press
function love.keypressed(key)

  
  
end 