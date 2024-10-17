--- Register the login card
--- @param d table: deferrals
--- @param cb function: callback
local function registerLoginCard(d, cb)
    d.presentCard(Cards.loginPage, function(data)
        if data.action == 'back' then
            cb(d)
        end
    end)
end

--- Register the home card
--- @param d table: deferrals
function registerHomeCard(d)
    d.presentCard(Cards.homePage, function(data)
        if data.action == 'quit' then 
            d.done("Vous avez quitté le serveur.")
            return CancelEvent()
        end

        if data.action == 'login' then
            registerLoginCard(d, registerHomeCard)
        end

        if data.action == 'register' then
            -- TODO -> Ouvrir la page de création de compte            
        end
    end)
end