local shell = require("shell")

local list = {
  {
    url = "https://raw.githubusercontent.com/IgorTimofeev/MineOS/master/Applications/Robot/advancedRobot.lua",
    path = "/lib/advancedRobot.lua",
  },
  {
    url = "https://raw.githubusercontent.com/IgorTimofeev/MineOS/master/Applications/Robot/commander.lua",
    path = "commander.lua",
  },
  {
    url = "https://raw.githubusercontent.com/IgorTimofeev/MineOS/master/Applications/Robot/expirience.lua",
    path = "expirience.lua",
  },
}

for i = 1, #list do
  shell.execute("wget " .. list[i].url .. " " .. list[i].path .. " -f")
end