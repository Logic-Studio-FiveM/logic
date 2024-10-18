--- Register the login card
--- @param d table: deferrals
--- @param cb function: callback
local function registerLoginCard(d, cb)
    d.presentCard(Cards.loginPage, function(data)
        if data.action == 'back' then
            return cb(d)
        end

        if data.action == 'login' then
            local username = data?.loginUsername
            local password = data?.loginPassword

            if not username or not password then
                d.update("Veuillez entrer un nom d'utilisateur et un mot de passe")
                
                Wait(2500)

                return registerLoginCard(d, cb)
            end

            if not profiles[username] then
                d.update("Ce nom d'utilisateur n'existe pas")

                Wait(2500)

                return registerLoginCard(d, cb)
            end

            if profiles[username].password ~= password then
                d.update("Mot de passe incorrect")

                Wait(2500)

                return registerLoginCard(d, cb)
            end
        end
    end)
end

--- Register the register card
--- @param d table: deferrals
--- @param cb function: callback
local function registerRegisterCard(d, cb)
    d.presentCard(Cards.registerPage, function(data)
        if data.action == 'back' then
            return cb(d)
        end

        if data.action == 'register' then
            local username = data?.registerUsername
            local password = data?.registerPassword

            if not username or not password then
                d.update("Veuillez entrer un nom d'utilisateur et un mot de passe")

                Wait(2500)

                return registerRegisterCard(d, cb)
            end

            if profiles[username] then
                d.update("Ce nom d'utilisateur est déjà pris")

                Wait(2500)

                return registerRegisterCard(d, cb)
            end
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
            registerRegisterCard(d, registerHomeCard)
        end
    end)
end