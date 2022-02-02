local userInput = game:GetService("UserInputService")

local players = game:GetService("Players")


local sprintSpeed = 30 -- normal default walkspeed holding no buttons

local walkSpeed = 16  -- how fast you go holding shift



local player = players.LocalPlayer



local function beginSprint(input, gameProcessed)

 if not gameProcessed then        

  if input.UserInputType == Enum.UserInputType.Keyboard then

   local keycode = input.KeyCode

   if keycode == Enum.KeyCode.LeftShift then 

    player.Character.Humanoid.WalkSpeed = sprintSpeed

   end

  end

 end

end

local function endSprint(input, gameProcessed)

 if not gameProcessed then

  if input.UserInputType == Enum.UserInputType.Keyboard then

   local keycode = input.KeyCode

   if keycode == Enum.KeyCode.LeftShift then

    player.Character.Humanoid.WalkSpeed = walkSpeed

   end

  end

 end

end
