local coreAPILoaded = os.loadAPI("coreOps")

if coreAPILoaded == true then
    local success, data = turtle.inspect()
    coreOps.processTableData(data, '')
end
