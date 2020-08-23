function processCropBlock(cropName, data)
    local cropAge = getBlockKeyValue(data, 'age')
    if cropName == 'minecraft:wheat' then
        -- 7 is the max "age" for wheat
        if cropAge == 7 then
            print("It's ready for harvest!")
            turtle.dig()
            turtle.select(2)
            turtle.place()
            turtle.select(1)
        end
        -- in case there are some crops floating on the plot
        turtle.suck()
    end
end

inventorySlotCount = 17

function elementIsInArray(arr, element)
    for el in ipairs(arr) do
        if el == element then
            return true
        end
    end
    return false
end

function fuelCheck(fuelSlots)
    print("Checking fuel...")
    local fuelLevel = turtle.getFuelLevel()
    while fuelLevel < 1 do
        print("Out of fuel - attempting refuel...")
        for _, slot in ipairs(fuelSlots) do
            turtle.select(slot)
            turtle.refuel({1})
            fuelLevel = turtle.getFuelLevel()
        end
        if fuelLevel < 80 then
            print("No fuel found!")
            return false
        end
    end
    return true
end

-- Iterate over the inventory of the turtle and drop non-fuel items
function depositItems(excludeSlots)
    local i = 1
    while i < inventorySlotCount do
        local excludeSlot = elementIsInArray(excludeSlots, i)
        if excludeSlot == false then
            turtle.select(i)
            turtle.drop()
        end
        i = i + 1
    end
    -- Reset the selected slot to the first one
    turtle.select(1)
end

function processTableData(table, indentation)
    for key, value in pairs(table) do
        if type(value) == 'table' then
            print(key)
            local newIndent = indentation .. '\t'
            -- recursive call when nested table is found
            processTableData(value, newIndent)
        else
            print(indentation, key, ": ", value)
        end
    end
end

function getBlockKeyValue(data, keyName)
    if data == "No block to inspect" then
        return
    end
    local target = nil
    for key, value in pairs(data) do
        if key == keyName then
            target = value
        elseif type(value) == 'table' then
            for key2, value2 in pairs(value) do
                if key2 == keyName then
                    target = value2
                end
            end
        end
    end
    return target
end