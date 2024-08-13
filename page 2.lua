--[[    Character Sheet Template    by: MrStump

You can set up your own character sheet if you follow these steps.

Step 1) Change the character sheet image
    -Right click on the character sheet, click Custom
    -Replace the image URL with one for your character sheet
    -Click import, make sure your sheet loads
    -SAVE THE GAME (the table setup)
    -LOAD FROM THAT SAVE YOU JUST MADE

Step 2) Edit script to fit your character sheet
    -Below you will see some general options, and then the big data table
    -The data table is what determines how many of which buttons are made
        -Checkboxes
        -Counters
        -Textboxes
    -By default, there are 3 of each. You can add more or remove entries
    -If you intend to add/remove, be sure only to add/remove ENTRIES
        -This is what an entry looks like:
            {
                pos   = {-0.977,0.1,-0.589},
                size  = 800,
                state = false
            },
        -Deleting the whole thing would remove that specific item on the sheet
        -Copy and pasting it after another entry would create another
    -Each entry type has unique data points (pos, size, state, etc)
        -Do not try to add in your own data points or remove them individually
        -There is a summary of what each point does at the top of its category

Step 3) Save and check script changes
    -Hit Save & Apply in the script window to save your code
    -You can edit your code as needed and Save+Apply as often as needed
    -When you are finished, make disableSave = false below then Save+apply
        -This enables saving, so your sheet will remember whats on it.

Bonus) Finding/Editing Positions for elements
    I have included a tool to get positions for buttons in {x,y,z} form
    Place it where you want the center of your element to be
    Then copy the table from the notes (lower right of screen)
        You can highlight it and CTRL+C
    Paste it into the data table where needed (pos=)
    If you want to manually tweek the values:
        {0,0,0} is the center of the character sheet
        {1,0,0} is right, {-1,0,0} is left
        {0,0,-1} is up, {0,0,1} is down
        0.1 for Y is the height off of the page.
            If it was 0, it would be down inside the model of the sheet

Begin editing below:    ]]

--Set this to true while editing and false when you have finished
disableSave = False
--Remember to set this to false once you are done making changes
--Then, after you save & apply it, save your game too

--Color information for button text (r,g,b, values of 0-1)
buttonFontColor = {0,0,0}
--Color information for button background
buttonColor = {1,1,1}
--Change scale of button (Avoid changing if possible)
buttonScale = {0.1,0.1,0.1}

--This is the button placement information
defaultButtonData = {
    --Add checkboxes
    checkbox = {
        --[[
        pos   = the position (pasted from the helper tool)
        size  = height/width/font_size for checkbox
        state = default starting value for checkbox (true=checked, false=not)
        ]]

        --End of checkboxes
    },
    --Add counters that have a + and - button
    counter = {
        --[[
        pos    = the position (pasted from the helper tool)
        size   = height/width/font_size for counter
        value  = default starting value for counter
        hideBG = if background of counter is hidden (true=hidden, false=not)
        ]]
        --Current HP

        --End of counters
    },
    --Add editable text boxes
    textbox = {

--Level details
    --Level 1
        {
            pos       = {-.97,0.1,-1.803},
            rows      = 2,
            width     = 4000,
            font_size = 250,
            label     = "",
            value     = "",
            alignment = 2
        },--Ancestry and Heritage abilities
        {
            pos       = {-.97,0.1,-1.607},
            rows      = 2,
            width     = 4000,
            font_size = 275,
            label     = "",
            value     = "",
            alignment = 2
        },-- Ancestry Feat
        {
            pos       = {-.97,0.1,-1.391},
            rows      = 3,
            width     = 4000,
            font_size = 275,
            label     = "",
            value     = "",
            alignment = 2
        },-- Background Skill Feat
        {
            pos       = {0,0.1,-1.6},
            rows      = 8,
            width     = 4500,
            font_size = 275,
            label     = "",
            value     = "",
            alignment = 2
        },-- CLass feats/features [R]
    -- Level 2
        {
            pos       = {-.97,0.1,-1.16},
            rows      = 2,
            width     = 4250,
            font_size = 300,
            label     = "Skill Feat",
            value     = "",
            alignment = 2
        },-- Skill Feat
        {
            pos       = {-0.04,0.1,-1.16},
            rows      = 2,
            width     = 4500,
            font_size = 300,
            label     = "Class Feat",
            value     = "",
            alignment = 2
        },--Class Feat [R]
    -- Level 3
        {
            pos       = {-.97,0.1,-.986},
            rows      = 2,
            width     = 4000,
            font_size = 300,
            label     = "General Feat",
            value     = "",
            alignment = 2
        },-- General Feat
        {
            pos       = {-0.04,0.1,-.986},
            rows      = 2,
            width     = 4500,
            font_size = 300,
            label     = "Class Feat",
            value     = "",
            alignment = 2
        },--Class Feat [R]
    -- Level 4
        {
            pos       = {-.97,0.1,-0.816},
            rows      = 2,
            width     = 4000,
            font_size = 300,
            label     = "Skill Feat",
            value     = "",
            alignment = 2
        },-- Skill Feat
        {
            pos       = {-0.04,0.1,-0.816},
            rows      = 2,
            width     = 4500,
            font_size = 300,
            label     = "Class Feat",
            value     = "",
            alignment = 2
        },--Class Feat [R]
    -- Level 5
        {
            pos       = {-1.07,0.1,-0.647},
            rows      = 2,
            width     = 3500,
            font_size = 300,
            label     = "Ancestry Feat",
            value     = "",
            alignment = 2
        },-- Ancestry Feat
        {
            pos       = {-.62,.1,-.64},
            rows      = 1,
            width     = 825,
            font_size = 300,
            label     = "Boosts",
            value     = "",
            alignment = 2
        },-- Ability Boosts
        {
            pos       = {-0.04,0.1,-0.65},
            rows      = 2,
            width     = 4500,
            font_size = 300,
            label     = "Class Feature",
            value     = "",
            alignment = 2
        },--Class Feature [R]
    -- Level 6
        {
            pos       = {-.97,0.1,-0.48},
            rows      = 2,
            width     = 4000,
            font_size = 300,
            label     = "Skill Feat",
            value     = "",
            alignment = 2
        },-- Skill Feat
        {
            pos       = {-0.04,0.1,-0.48},
            rows      = 2,
            width     = 4500,
            font_size = 300,
            label     = "Class Feat",
            value     = "",
            alignment = 2
        },--Class Feat [R]
   -- Level 7
        {
            pos       = {-.97,0.1,-0.31},
            rows      = 2,
            width     = 4000,
            font_size = 300,
            label     = "General Feat",
            value     = "",
            alignment = 2
        },-- General Feat
        {
            pos       = {-0.04,0.1,-0.31},
            rows      = 2,
            width     = 4500,
            font_size = 300,
            label     = "Class Feature",
            value     = "",
            alignment = 2
        },--Class Feature [R]
    -- Level 8
        {
            pos       = {-.97,0.1,-0.135},
            rows      = 2,
            width     = 4000,
            font_size = 300,
            label     = "Skill Feat",
            value     = "",
            alignment = 2
        },-- Skill Feat
        {
            pos       = {-0.04,0.1,-0.135},
            rows      = 2,
            width     = 4500,
            font_size = 300,
            label     = "Class Feat",
            value     = "",
            alignment = 2
        },--Class Feat [R]
    -- Level 9
        {
            pos       = {-.97,0.1,0.03},
            rows      = 2,
            width     = 4000,
            font_size = 300,
            label     = "Skill Feat",
            value     = "",
            alignment = 2
        },-- Skill Feat
        {
            pos       = {-0.04,0.1,0.03},
            rows      = 2,
            width     = 4500,
            font_size = 300,
            label     = "Class Feat",
            value     = "",
            alignment = 2
        },--Class Feat [R]
    -- Level 10
        {
            pos       = {-1.07,0.1,0.2},
            rows      = 2,
            width     = 3500,
            font_size = 300,
            label     = "Skill Feat",
            value     = "",
            alignment = 2
        },-- Skill Feat
        {
            pos       = {-.62,.1,0.21},
            rows      = 1,
            width     = 825,
            font_size = 300,
            label     = "Boosts",
            value     = "",
            alignment = 2
        },-- Ability Boosts
        {
            pos       = {-0.04,0.1,0.2},
            rows      = 2,
            width     = 4500,
            font_size = 300,
            label     = "Class Feat",
            value     = "",
            alignment = 2
        },--Class Feat [R]
    -- Level 11
        {
            pos       = {-.97,0.1,0.37},
            rows      = 2,
            width     = 4000,
            font_size = 300,
            label     = "General Feat",
            value     = "",
            alignment = 2
        },-- General Feat
        {
            pos       = {-0.04,0.1,0.37},
            rows      = 2,
            width     = 4500,
            font_size = 300,
            label     = "Class Feature",
            value     = "",
            alignment = 2
        },--Class Feature [R]
    -- Level 12
        {
            pos       = {-.97,0.1,0.54},
            rows      = 2,
            width     = 4000,
            font_size = 300,
            label     = "Skill Feat",
            value     = "",
            alignment = 2
        },-- Skill Feat
        {
            pos       = {-0.04,0.1,0.54},
            rows      = 2,
            width     = 4500,
            font_size = 300,
            label     = "Class Feat",
            value     = "",
            alignment = 2
        },--Class Feat [R]
    -- Level 13
        {
            pos       = {-.97,0.1,0.72},
            rows      = 2,
            width     = 4000,
            font_size = 300,
            label     = "Skill Feat",
            value     = "",
            alignment = 2
        },-- Skill Feat
        {
            pos       = {-0.04,0.1,0.72},
            rows      = 2,
            width     = 4500,
            font_size = 300,
            label     = "Class Feat",
            value     = "",
            alignment = 2
        },--Class Feat [R]
    -- Level 14
        {
            pos       = {-1.07,0.1,0.88},
            rows      = 2,
            width     = 3500,
            font_size = 300,
            label     = "Ancestry Feat",
            value     = "",
            alignment = 2
        },-- Ancestry Feat
        {
            pos       = {-.62,.1,0.89},
            rows      = 1,
            width     = 825,
            font_size = 300,
            label     = "Boosts",
            value     = "",
            alignment = 2
        },-- Ability Boosts
        {
            pos       = {-0.04,0.1,0.88},
            rows      = 2,
            width     = 4500,
            font_size = 300,
            label     = "Class Feature",
            value     = "",
            alignment = 2
        },--Class Feature [R]
    -- Level 15
        {
            pos       = {-.97,0.1,1.05},
            rows      = 2,
            width     = 4000,
            font_size = 300,
            label     = "General Feat",
            value     = "",
            alignment = 2
        },-- General Feat
        {
            pos       = {-0.04,0.1,1.05},
            rows      = 2,
            width     = 4500,
            font_size = 300,
            label     = "Class Feature",
            value     = "",
            alignment = 2
        },--Class Feature [R]
    -- Level 16
        {
            pos       = {-.97,0.1,1.22},
            rows      = 2,
            width     = 4000,
            font_size = 300,
            label     = "Skill Feat",
            value     = "",
            alignment = 2
        },-- Skill Feat
        {
            pos       = {-0.04,0.1,1.22},
            rows      = 2,
            width     = 4500,
            font_size = 300,
            label     = "Class Feat",
            value     = "",
            alignment = 2
        },--Class Feat [R]
    -- Level 17
        {
            pos       = {-.97,0.1,1.39},
            rows      = 2,
            width     = 4000,
            font_size = 300,
            label     = "Ancestry Feat",
            value     = "",
            alignment = 2
        },-- Ancestry Feat
        {
            pos       = {-0.04,0.1,1.39},
            rows      = 2,
            width     = 4500,
            font_size = 300,
            label     = "Class Feature",
            value     = "",
            alignment = 2
        },--Class Feature [R]
    -- Level 18
        {
            pos       = {-.97,0.1,1.56},
            rows      = 2,
            width     = 4000,
            font_size = 300,
            label     = "Skill Feat",
            value     = "",
            alignment = 2
        },-- Skill Feat
        {
            pos       = {-0.04,0.1,1.56},
            rows      = 2,
            width     = 4500,
            font_size = 300,
            label     = "Class Feat",
            value     = "",
            alignment = 2
        },--Class Feat [R]
    -- Level 19
        {
            pos       = {-.97,0.1,1.735},
            rows      = 2,
            width     = 4000,
            font_size = 300,
            label     = "General Feat",
            value     = "",
            alignment = 2
        },-- General Feat
        {
            pos       = {-0.04,0.1,1.735},
            rows      = 2,
            width     = 4500,
            font_size = 300,
            label     = "Class Feature",
            value     = "",
            alignment = 2
        },--Class Feature [R]
    -- Level 20
        {
            pos       = {-1.07,0.1,1.9},
            rows      = 2,
            width     = 3500,
            font_size = 300,
            label     = "Skill Feat",
            value     = "",
            alignment = 2
        },-- Skill Feat
        {
            pos       = {-.62,.1,1.91},
            rows      = 1,
            width     = 825,
            font_size = 300,
            label     = "Boosts",
            value     = "",
            alignment = 2
        },-- Ability Boosts
        {
            pos       = {-0.04,0.1,1.9},
            rows      = 2,
            width     = 4500,
            font_size = 300,
            label     = "Class Feat",
            value     = "",
            alignment = 2
        },--Class Feat [R]
--Inventory
        {
            pos       = {0.952,0.1,-1.5},
            rows      = 15,
            width     = 4000,
            font_size = 250,
            label     = "Held Items",
            value     = "",
            alignment = 2
        },--Held Items
        {
            pos       = {1.44,0.1,-1.5},
            rows      = 15,
            width     = 525,
            font_size = 250,
            label     = "Bulk",
            value     = "",
            alignment = 2
        },-- held Bulk
        {
            pos       = {.952,0.1,-0.64},
            rows      = 15,
            width     = 4000,
            font_size = 250,
            label     = "Consummables",
            value     = "",
            alignment = 2
        },--Consumables
        {
            pos       = {1.44,0.1,-0.64},
            rows      = 15,
            width     = 525,
            font_size = 250,
            label     = "Bulk",
            value     = "",
            alignment = 2
        },-- Consumable Bulk
        {
            pos       = {.85,0.1,.39},
            rows      = 23,
            width     = 3000,
            font_size = 250,
            label     = "Worn Items",
            value     = "",
            alignment = 2
        },--Worn Items
        {
            pos       = {1.27,0.1,.39},
            rows      = 23,
            width     = 1000,
            font_size = 250,
            label     = "Invested",
            value     = "",
            alignment = 2
        },-- Invested
        {
            pos       = {1.44,0.1,.39},
            rows      = 23,
            width     = 525,
            font_size = 250,
            label     = "Bulk",
            value     = "",
            alignment = 2
        },-- Worn Bulk
    --Total Bulk
        {
            pos       = {0.644,0.1,1.238},
            rows      = 1,
            width     = 680,
            font_size = 380,
            label     = "Bulk",
            value     = "",
            alignment = 3
        },-- Total Bulk
    --Currency
        {
            pos       = {0.668,0.1,1.523},
            rows      = 1,
            width     = 680,
            font_size = 300,
            label     = "Copper",
            value     = "",
            alignment = 3
        },-- CP
        {
            pos       = {0.901,0.1,1.524},
            rows      = 1,
            width     = 680,
            font_size = 300,
            label     = "Silver",
            value     = "",
            alignment = 3
        },-- SP
        {
            pos       = {1.134,0.1,1.524},
            rows      = 1,
            width     = 680,
            font_size = 300,
            label     = "Gold",
            value     = "",
            alignment = 3
        },-- GP
        {
            pos       = {1.365,0.1,1.525},
            rows      = 1,
            width     = 680,
            font_size = 300,
            label     = "Platinum",
            value     = "",
            alignment = 3
        },-- PP
        {
            pos       = {0.85,0.1,1.824},
            rows      = 8,
            width     = 3250,
            font_size = 200,
            label     = "Gems and Artwork",
            value     = "",
            alignment = 2
        },-- Gems and artwork
        {
            pos       = {1.29,0.1,1.824},
            rows      = 8,
            width     = 680,
            font_size = 200,
            label     = "G/A price",
            value     = "",
            alignment = 2
        },-- Gem/Art Price
        {
            pos       = {1.431,0.1,1.824},
            rows      = 8,
            width     = 600,
            font_size = 200,
            label     = "Bulk",
            value     = "",
            alignment = 3
        },-- Gem/Art Bulk
        --End of textboxes
    }
}



--Lua beyond this point, I recommend doing something more fun with your life



--Save function
function updateSave()
    saved_data = JSON.encode(ref_buttonData)
    if disableSave==true then saved_data="" end
    self.script_state = saved_data
end

--Startup procedure
function onload(saved_data)
    if disableSave==true then saved_data="" end
    if saved_data ~= "" then
        local loaded_data = JSON.decode(saved_data)
        ref_buttonData = loaded_data
    else
        ref_buttonData = defaultButtonData
    end

    spawnedButtonCount = 0
    createCheckbox()
    createCounter()
    createTextbox()
end



--Click functions for buttons



--Checks or unchecks the given box
function click_checkbox(tableIndex, buttonIndex)
    if ref_buttonData.checkbox[tableIndex].state == true then
        ref_buttonData.checkbox[tableIndex].state = false
        self.editButton({index=buttonIndex, label=""})
    else
        ref_buttonData.checkbox[tableIndex].state = true
        self.editButton({index=buttonIndex, label=string.char(10008)})
    end
    updateSave()
end

--Applies value to given counter display
function click_counter(tableIndex, buttonIndex, amount)
    ref_buttonData.counter[tableIndex].value = ref_buttonData.counter[tableIndex].value + amount
    self.editButton({index=buttonIndex, label=ref_buttonData.counter[tableIndex].value})
    updateSave()
end

--Updates saved value for given text box
function click_textbox(i, value, selected)
    if selected == false then
        ref_buttonData.textbox[i].value = value
        updateSave()
    end
end

--Dud function for if you have a background on a counter
function click_none() end



--Button creation



--Makes checkboxes
function createCheckbox()
    for i, data in ipairs(ref_buttonData.checkbox) do
        --Sets up reference function
        local buttonNumber = spawnedButtonCount
        local funcName = "checkbox"..i
        local func = function() click_checkbox(i, buttonNumber) end
        self.setVar(funcName, func)
        --Sets up label
        local label = ""
        if data.state==true then label=string.char(10008) end
        --Creates button and counts it
        self.createButton({
            label=label, click_function=funcName, function_owner=self,
            position=data.pos, height=data.size, width=data.size,
            font_size=data.size, scale=buttonScale,
            color=buttonColor, font_color=buttonFontColor
        })
        spawnedButtonCount = spawnedButtonCount + 1
    end
end

--Makes counters
function createCounter()
    for i, data in ipairs(ref_buttonData.counter) do
        --Sets up display
        local displayNumber = spawnedButtonCount
        --Sets up label
        local label = data.value
        --Sets height/width for display
        local size = data.size
        if data.hideBG == true then size = 0 end
        --Creates button and counts it
        self.createButton({
            label=label, click_function="click_none", function_owner=self,
            position=data.pos, height=size, width=size,
            font_size=data.size, scale=buttonScale,
            color=buttonColor, font_color=buttonFontColor
        })
        spawnedButtonCount = spawnedButtonCount + 1

        --Sets up add 1
        local funcName = "counterAdd"..i
        local func = function() click_counter(i, displayNumber, 1) end
        self.setVar(funcName, func)
        --Sets up label
        local label = "+"
        --Sets up position
        local offsetDistance = (data.size/2 + data.size/4) * (buttonScale[1] * 0.002)
        local pos = {data.pos[1] + offsetDistance, data.pos[2], data.pos[3]}
        --Sets up size
        local size = data.size / 2
        --Creates button and counts it
        self.createButton({
            label=label, click_function=funcName, function_owner=self,
            position=pos, height=size, width=size,
            font_size=size, scale=buttonScale,
            color=buttonColor, font_color=buttonFontColor
        })
        spawnedButtonCount = spawnedButtonCount + 1

        --Sets up subtract 1
        local funcName = "counterSub"..i
        local func = function() click_counter(i, displayNumber, -1) end
        self.setVar(funcName, func)
        --Sets up label
        local label = "-"
        --Set up position
        local pos = {data.pos[1] - offsetDistance, data.pos[2], data.pos[3]}
        --Creates button and counts it
        self.createButton({
            label=label, click_function=funcName, function_owner=self,
            position=pos, height=size, width=size,
            font_size=size, scale=buttonScale,
            color=buttonColor, font_color=buttonFontColor
        })
        spawnedButtonCount = spawnedButtonCount + 1
    end
end

function createTextbox()
    for i, data in ipairs(ref_buttonData.textbox) do
        --Sets up reference function
        local funcName = "textbox"..i
        local func = function(_,_,val,sel) click_textbox(i,val,sel) end
        self.setVar(funcName, func)

        self.createInput({
            input_function = funcName,
            function_owner = self,
            label          = data.label,
            alignment      = data.alignment,
            position       = data.pos,
            scale          = buttonScale,
            width          = data.width,
            height         = (data.font_size*data.rows)+24,
            font_size      = data.font_size,
            color          = buttonColor,
            font_color     = buttonFontColor,
            value          = data.value,
        })
    end
end
