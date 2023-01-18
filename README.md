# Build A Boat For Treasure Script

Script Made By AltLexon

For launch you have to execute: 

```lua
getgenv().autoFarm = true -- enable / disable toggle
getgenv().ammount = 1 -- rounds ( you can put 9e9 for inf )

local rbxmSuite = loadstring(game:HttpGetAsync("https://github.com/richie0866/rbxm-suite/releases/latest/download/rbxm-suite.lua"))()
local path = rbxmSuite.download("AltLexon/build-a-boat@latest", "BuildABoatForTreasure.rbxm")
local model = rbxmSuite.launch(path)
```
