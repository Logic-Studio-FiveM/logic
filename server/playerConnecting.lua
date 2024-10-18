AddEventHandler('playerConnecting', function(name, setKickReason, d)
    d.defer()

    Wait(50)
    
    registerHomeCard(d)
end) 