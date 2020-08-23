local coreOpsLoaded = os.loadAPI("coreOps")

if coreOpsLoaded == true then
    local success, data = turtle.inspect()
    local blockName = coreOps.getBlockKeyValue(data, "name")
    print("Block name: ", blockName)
end