-- client/CamisetaFalangeClient.lua

-- Este código se ejecutará en el lado del cliente.

Events.OnGameStart.Add(function()
    local player = getSpecificPlayer(0) -- Obtener al jugador local

    if player then
        local clothingItem = player:getInventory():FindAndReturn("FALANGE.camiseta_falange") -- Buscar la camiseta en el inventario del jugador

        if clothingItem then
            -- Personalizar la apariencia de la camiseta
            clothingItem:getVisual():setTexture("media/textures/clothes/camiseta_falange_textures/camiseta_falange.png")
        end
    end
end)
