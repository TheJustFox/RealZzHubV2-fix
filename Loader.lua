local a = Instance.new("Folder", game.ReplicatedStorage)
a.Name = "Writing"
local b = Instance.new("Folder", game.ReplicatedStorage)
b.Name = "AFK"
local c = Instance.new("LocalScript", game.Players.LocalPlayer.PlayerGui)
c.Name = "Roll"
local source = loadstring(game:HttpGet("https://raw.githubusercontent.com/RealZzHub/MainV2/main/Main.lua"))
local environment = getfenv(source)

local _game = game
environment.game = setmetatable({}, {
    __index = function(_, key)
        if key == "GetService" then
            return function(_, service)
                return _game:GetService(service)    
            end
        elseif key == "HttpGet" then
            return function(_, url)
                if url == "https://raw.githubusercontent.com/RealZzHub/Main/main/UILibV2.lua" then
                    print("[+] Spoofed UI Library")
                    return _game:HttpGet("i didnt upload file yet fuuck")
                elseif url == "https://raw.githubusercontent.com/RealZzHub/MainV2/main/Misc/Credits.txt" then
                    print("[+] Spoofed Credits")
                    return [[decerzz | Main & UI Library,
realoneofu | Main,
phoenix_a (63mu) | Fullfix]]
                end
                return _game:HttpGet(url)
            end
        end
        return _game[key]
    end
})

source()
