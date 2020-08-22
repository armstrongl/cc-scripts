local coreAPILoaded = os.loadAPI("coreOps")

-- Make sure the core API loaded properly
if coreAPILoaded == true then
    while true do
        local success, data = turtle.inspect()
        local blockInFrontName = coreOps.getBlockKeyValue(data,"name")
        if blockInFrontName == "minecraft:chest" then
            -- Handle chest
            print("Putting crap away...")
            coreOps.depositNonFuelItems(1)
        elseif blockInFrontName == "minecraft:stone_bricks" then
            -- Handle stone bricks
            turtle.turnRight()
        elseif blockInFrontName == "minecraft:wheat" then
            -- Handle wheat
            print('Harvesting wheat...')
            coreOps.processCropBlock(blockInFrontName, data)
        end
        break    -- Comment this out later             
    end
else
    print("There was a problem loading the coreOps API")
end
