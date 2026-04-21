push = require 'libs.push'

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

RECTANGLE_WIDTH = 5
RECTANGLE_HEIGHT = 20

PADDLE_SPEED = 200

function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')

    math.randomseed(os.time())

    largeFont = love.graphics. newFont('font.ttf', 32)
    smallFont = love.graphics.newFont('font.ttf', 8)

    player1Score = 0
    player2Score = 0

    player1Y = 10
    player2Y = VIRTUAL_HEIGHT - 30

    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
        resizable = false,
        vsync = true,
        fullscreen = false
    })
    push.setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, { upscale = 'normal'})
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

function love.update(dt)
    if love.keyboard.isDown('w') then
        player1Y = math.max(0, player1Y + (-PADDLE_SPEED * dt))
    elseif love.keyboard.isDown('s') then
        player1Y = math.min(VIRTUAL_HEIGHT - 20, player1Y + (PADDLE_SPEED * dt))
    end

    if love.keyboard.isDown('up') then
        player2Y = math.max(0, player2Y + (-PADDLE_SPEED * dt))
    elseif love.keyboard.isDown('down') then
        player2Y = math.min(VIRTUAL_HEIGHT - 20, player2Y + (PADDLE_SPEED * dt))
    end
end

function love.draw()
    push.start()
    love.graphics.clear(40/255, 45/255, 52/255, 1)
    love.graphics.setFont(largeFont)
    love.graphics.print(tostring(player1Score), VIRTUAL_WIDTH / 2 - 50, VIRTUAL_HEIGHT / 2 - 80)
    love.graphics.print(tostring(player2Score), VIRTUAL_WIDTH / 2 + 30, VIRTUAL_HEIGHT / 2 - 80)

    -- paddle 1
    love.graphics.rectangle('fill', 10, player1Y, RECTANGLE_WIDTH, RECTANGLE_HEIGHT)

    -- paddle 2
    love.graphics.rectangle('fill', VIRTUAL_WIDTH - 15, player2Y, RECTANGLE_WIDTH, RECTANGLE_HEIGHT)

    -- ball
    love.graphics.rectangle('fill', VIRTUAL_WIDTH / 2 - 2, VIRTUAL_HEIGHT / 2 - 2, 4, 4)

    push.finish()
end