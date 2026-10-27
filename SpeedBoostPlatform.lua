Walk faster on Platform Roblox Script

Put the script not local script direct in platform:


local platform = script.Parent
local Players = game:GetService("Players")

local BOOST_SPEED = 100
local NORMAL_SPEED = 16

local touching = {}
local originalSpeeds = {}

local function getCharacter(part)
    local character = part:FindFirstAncestorOfClass("Model")
    if not character then
        return nil
    end

    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local player = Players:GetPlayerFromCharacter(character)

    if humanoid and player then
        return humanoid
    end

    return nil
end

platform.Touched:Connect(function(part)
    local humanoid = getCharacter(part)
    if not humanoid then return end

    touching[humanoid] = (touching[humanoid] or 0) + 1

    if originalSpeeds[humanoid] == nil then
        originalSpeeds[humanoid] = humanoid.WalkSpeed
    end

    humanoid.WalkSpeed = BOOST_SPEED
end)

platform.TouchEnded:Connect(function(part)
    local humanoid = getCharacter(part)
    if not humanoid or not touching[humanoid] then return end

    touching[humanoid] -= 1

    if touching[humanoid] <= 0 then
        touching[humanoid] = nil

        if humanoid.Parent and originalSpeeds[humanoid] then
            humanoid.WalkSpeed = originalSpeeds[humanoid]
        end

        originalSpeeds[humanoid] = nil
    end
end)


