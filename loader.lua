-- Dandy's World Loader
-- Place this on a public GitHub and have users run:
-- loadstring(game:HttpGet("YOUR_PUBLIC_RAW_URL"))()

local HttpService = game:GetService("HttpService")

local response = HttpService:RequestAsync({
    Url = "https://raw.githubusercontent.com/n0rm0/IlikeCookedBacon/main/main.lua",
    Method = "GET",
    Headers = {
        ["Authorization"] = "token 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",
        ["Accept"] = "application/vnd.github.v3.raw"
    }
})

if response.Success then
    loadstring(response.Body)()
else
    warn("[Dandy's World] Failed to load: " .. response.StatusCode)
end
