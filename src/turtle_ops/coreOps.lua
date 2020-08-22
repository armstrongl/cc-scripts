function processCropBlock(cropName, data)
    local cropAge = getBlockKeyValue(data, "age")
    print('Crop age: ', cropAge)
    if cropType == 'minecraft:wheat' and cropAge == 7 then
        -- 7 is the max "age" for wheat
        turtle.dig()
    end
end

inventorySlotCount = 17

-- Iterate over the inventory of the turtle and drop non-fuel items
function depositNonFuelItems(fuelSlot)
    local i = 1
    while i < inventorySlotCount do
        if i ~= fuelSlot then
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
    local targetValue = nil
    for key, value in pairs(data) do
        print('Evaluating key: ', key)
        if key == keyName then
            targetValue = value
        end
    end
    return targetValue
end