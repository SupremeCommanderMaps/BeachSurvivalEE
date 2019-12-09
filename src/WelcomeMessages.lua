newInstance = function(textPrinter, options, mapVersion)
    local WELCOME_MESSAGE_DURATION = 20

    local function displayWelcome()
        local headerOptions = { color = "ff5599ff", duration = WELCOME_MESSAGE_DURATION, location = "leftcenter" }
        local titleOptions = { color = "ff5599ff", duration = WELCOME_MESSAGE_DURATION, location = "leftcenter", size = 35 }
        local textOptions = { color = "ff4488df", duration = WELCOME_MESSAGE_DURATION, location = "leftcenter" }

        textPrinter.print(string.rep(" ", 20) .. "Welcome to", headerOptions)
        textPrinter.print(string.rep(" ", 12) .. "Beach Survival EE", titleOptions)
        textPrinter.print(string.rep(" ", 25) .. "Entropy Edition, version " .. mapVersion, headerOptions)
        textPrinter.printBlankLine(textOptions)
        textPrinter.printBlankLine(textOptions)
        textPrinter.print(string.rep(" ", 20) .. "Difficulty " .. options.opt_Survival_EnemiesPerMinute, textOptions)
        textPrinter.print(string.rep(" ", 20) .. "Enemies spawn in " .. options.opt_Survival_BuildTime .. " seconds", textOptions)
        textPrinter.print(string.rep(" ", 20) .. "Enemies spawn every " .. options.opt_Survival_WaveFrequency .. " seconds", textOptions)

        textPrinter.print(
            string.rep(" ", 20) .. "Auto reclaim: " ..
                    (
                    options.opt_BeachAutoReclaim == 0
                            and "off"
                            or (options.opt_BeachAutoReclaim .. "%")
                    ),
            textOptions
        )
    end

    return {
        startDisplay = function()
            ForkThread(function()
                displayWelcome()
            end)
        end
    }
end