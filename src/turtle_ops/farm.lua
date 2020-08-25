local coreAPILoaded = os.loadAPI("coreOps")

-- Make sure the core API loaded properly
if coreAPILoaded == true then
    local hasFuel = true
    while hasFuel do
        local success, data = turtle.inspect()
        local blockInFrontName = coreOps.getBlockKeyValue(data,"name")
        if blockInFrontName == "ironchest:gold_chest" then
            -- Handle chest
            print("Putting crap away...")
            coreOps.depositItems({1,2})
            print("All done storing stuff! Sleeping...")
            os.sleep( 600 )
            turtle.turnRight()
        elseif blockInFrontName == "minecraft:stone_bricks" then
            -- Handle stone bricks
            print("Turning corner...")
            turtle.turnRight()
            -- Wheat and cotton are harvestable at the same age (7)
        elseif blockInFrontName == "minecraft:wheat" or blockInFrontName == 'simplefarming:cotton_crop' then
            -- Handle wheat
            print('Evaluating crop: ', blockInFrontName)
            coreOps.processCropBlock(blockInFrontName, data)
            turtle.turnLeft()
        else
            -- When no block is in front of the turtle 
            turtle.turnRight()
        end
        turtle.forward()
        turtle.suck()
        hasFuel = coreOps.fuelCheck({1})
        if hasFuel == false then
            print("Stopping...")
        end
        -- break    -- Comment this out later             
    end
else
    print("There was a problem loading the coreOps API")
end