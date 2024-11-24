-- FPS Cap Script
local targetFPS = 300 -- Set your desired FPS cap
local frameTime = 1 / targetFPS -- Calculate frame time

-- Variable to track the last frame's time
local lastFrameTime = tick()

game:GetService("RunService").RenderStepped:Connect(function()
    local now = tick()
    local deltaTime = now - lastFrameTime

    if deltaTime < frameTime then
        -- Pause execution to match the desired frame time
        wait(frameTime - deltaTime)
    end

    -- Update lastFrameTime
    lastFrameTime = tick()
end)