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
        --Magical Tradition

        {
            pos = { -1.282, 0.1, -1.874 },
            size = 200,
            state = false
        }, --Arcane
        {
            pos = { -1.232, 0.1, -1.874 },
            size = 200,
            state = false
        }, --Occult
        {
            pos = { -1.282, 0.1, -1.821 },
            size = 200,
            state = false
        }, --Primal
        {
            pos = { -1.232, 0.1, -1.821 },
            size = 200,
            state = false
        }, --Divine
        {
            pos = { -0.942, 0.1, -1.874 },
            size = 200,
            state = false
        }, --Prepared Caster
        {
            pos = { -0.942, 0.1, -1.82 },
            size = 200,
            state = false
        }, --Spontaneous Caster
        --Spell Statistics
        --Spell Attack
        {
            pos = { -1.332, 0.1, -1.585 },
            size = 150,
            state = false
        }, --Trained
        {
            pos = { -1.332, 0.1, -1.555 },
            size = 150,
            state = false
        }, --Expert
        {
            pos = { -1.332, 0.1, -1.523 },
            size = 150,
            state = false
        }, --Master
        {
            pos = { -1.332, 0.1, -1.495 },
            size = 150,
            state = false
        }, --Legend
        --Spell DC
        {
            pos = { -0.874, 0.1, -1.591 },
            size = 150,
            state = false
        }, --Trained
        {
            pos = { -0.874, 0.1, -1.558 },
            size = 150,
            state = false
        }, --Expert
        {
            pos = { -0.873, 0.1, -1.529 },
            size = 150,
            state = false
        }, --Master
        {
            pos = { -0.874, 0.1, -1.499 },
            size = 150,
            state = false
        }, --Legend
        --Focus Points
        -- point 1
        {
            pos = { -1.188, 0.1, 0.432 },
            size = 250,
            state = false
        },
        -- point 2
        {
            pos = { -1.117, 0.1, 0.432 },
            size = 250,
            state = false
        }, -- point 3
        {
            pos = { -1.046, 0.1, 0.432 },
            size = 250,
            state = false
        },
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
--Spell Slots
        --Spells per day
        { pos = {-0.093,0.1,-1.871},
          size  = 300,
          value = 0,
          hideBG = true
        }, --rank 1
        { pos = {0.077,0.1,-1.871},
          size  = 300,
          value = 0,
          hideBG = true
        }, --rank 2
        { pos = {0.247,0.1,-1.871},
          size  = 300,
          value = 0,
          hideBG = true
        }, --rank 3
        {
            pos = {0.417,0.1,-1.871},
            size  = 300,
            value = 0,
            hideBG = true
        }, --rank 4
        {
            pos = {0.587,0.1,-1.871},
            size  = 300,
            value = 0,
            hideBG = true
        }, --rank 5
        {
            pos = {0.757,0.1,-1.871},
            size  = 300,
            value = 0,
            hideBG = true
        }, --rank 6
        {
            pos = {0.927,0.1,-1.871},
            size  = 300,
            value = 0,
            hideBG = true
        }, --rank 7s
        { pos = {1.097,0.1,-1.871},
          size  = 300,
          value = 0,
          hideBG = true
        }, --rank 8
        { pos = {1.267,0.1,-1.871},
          size  = 300,
          value = 0,
          hideBG = true
        }, --rank 9
        { pos = {1.437,0.1,-1.871},
          size  = 300,
          value = 0,
          hideBG = true
        }, --rank 10
        --Spells Remaining per day
        { pos = {-0.093,0.1,-1.691},
          size  = 300,
          value = 0,
          hideBG = true
        }, --rank 1
        { pos = {0.077,0.1,-1.691},
          size  = 300,
          value = 0,
          hideBG = true
        }, --rank 2
        { pos = {0.247,0.1,-1.691},
          size  = 300,
          value = 0,
          hideBG = true
        }, --rank 3
        {
          pos = {0.417,0.1,-1.691},
          size  = 300,
          value = 0,
          hideBG = true
        }, --rank 4
        {
        pos = {0.587,0.1,-1.691},
          size  = 300,
          value = 0,
          hideBG = true
        }, --rank 5
        {
            pos = {0.757,0.1,-1.691},
            size  = 300,
            value = 0,
            hideBG = true
        }, --rank 6
        {
        pos = {0.927,0.1,-1.691},
          size  = 300,
          value = 0,
          hideBG = true
        }, --rank 7s
        { pos = {1.097,0.1,-1.691},
          size  = 300,
          value = 0,
          hideBG = true
        }, --rank 8
        { pos = {1.267,0.1,-1.691},
          size  = 300,
          value = 0,
          hideBG = true
        }, --rank 9
        { pos = {1.437,0.1,-1.691},
          size  = 300,
          value = 0,
          hideBG = true
        }, --rank 10
    --Cantrips per day
        { pos = {-1.102,0.1,-1.313},
          size  = 300,
          value = 0,
          hideBG = true
        },
        --Cantrip Rank
        { pos = {-0.592,0.1,-1.313},
          size  = 300,
          value = 0,
          hideBG = true
        },
    --Focus Spell Rank
        { pos = {-0.596,0.1,0.436},
          size  = 300,
          value = 0,
          hideBG = true
        },
    },


--End of counters
    --Add editable text boxes
    textbox = {
        --[[
        pos       = the position (pasted from the helper tool)
        rows      = how many lines of text you want for this box
        width     = how wide the text box is
        font_size = size of text. This and "rows" effect overall height
        label     = what is shown when there is no text. "" = nothing
        value     = text entered into box. "" = nothing
        alignment = Number to indicate how you want text aligned
                    (1=Automatic, 2=Left, 3=Center, 4=Right, 5=Justified)
        ]]
        --First textbox
--Spell Attack Bonus
        {
            pos = {-1.443,0.1,-1.554},
            rows = 1,
            width = 450,
            font_size = 250,
            label = "10",
            value = "",
            alignment = 3
        },
--Spell DC
        {
            pos = {-0.977,0.1,-1.547},
            rows = 1,
            width = 450,
            font_size = 250,
            label = "10",
            value = "",
            alignment = 3
        },
--Spell List
    --Cantrips
        {
            pos       = {-1.134,0.1,-0.47},
            rows      = 32,
            width     = 3500,
            font_size = 230,
            label     = "Name",
            value     = "",
            alignment = 2
        },--Name
        {
            pos       = {-0.7,0.1,-0.47},
            rows      = 32,
            width     = 620,
            font_size = 230,
            label     = "Actions",
            value     = "",
            alignment = 2
        },--Actions
        {
            pos       = {-0.573,0.1,-0.47},
            rows      = 32,
            width     = 525,
            font_size = 230,
            label     = "Prep",
            value     = "",
            alignment = 2
        },--Prep
    --Middle Column
        {
            pos       = {-0.2,0.1,-0.01},
            rows      = 65,
            width     = 2950,
            font_size = 230,
            label     = "Name",
            value     = "",
            alignment = 2
        },--Name
        {
            pos       = {0.176,0.1,-0.01},
            rows      = 65,
            width     = 650,
            font_size = 230,
            label     = "Actions",
            value     = "",
            alignment = 2
        },--Actions
        {
            pos       = {0.316,0.1,-0.01},
            rows      = 65,
            width     = 550,
            font_size = 230,
            label     = "Rank",
            value     = "",
            alignment = 2
        }, -- Rank
        {
            pos       = {0.43,0.1,-0.01},
            rows      = 65,
            width     = 525,
            font_size = 230,
            label     = "Prep",
            value     = "",
            alignment = 2
        },--Prep
    --Right Column
        {
            pos       = {0.81,0.1,-0.01},
            rows      = 65,
            width     = 2950,
            font_size = 230,
            label     = "Name",

            alignment = 2
        },--Name
        {
            pos       = {1.19,0.1,-0.01},
            rows      = 65,
            width     = 650,
            font_size = 230,
            label     = "Actions",
            value     = "",
            alignment = 2
        },--Actions
        {
            pos       = {1.33,0.1,-0.01},
            rows      = 65,
            width     = 550,
            font_size = 230,
            label     = "Rank",
            value     = "",
            alignment = 2
        }, -- Rank
        {
            pos       = {1.45,0.1,-0.01},
            rows      = 65,
            width     = 525,
            font_size = 230,
            label     = "Prep",
            value     = "",
            alignment = 2
        },--Prep


--Focus Spells
        {
            pos       = {-1.089,0.1,0.966},
            rows      = 19,
            width     = 3775,
            font_size = 200,
            label     = "Name",
            value     = "",
            alignment = 2
        },--Name
        {
            pos       = {-0.608,0.1,0.966},
            rows      = 19,
            width     = 675,
            font_size = 200,
            label     = "Actions",
            value     = "",
            alignment = 2
        },--Actions

--Innate Spells
        {
            pos       = {-1.168,0.1,1.726},
            rows      = 10,
            width     = 3000,
            font_size = 230,
            label     = "Name",
            value     = "",
            alignment = 2
        },--Name
        {
            pos       = {-0.752,0.1,1.726},
            rows      = 10,
            width     = 750,
            font_size = 230,
            label     = "Actions",
            value     = "",
            alignment = 2
        },--Actions
        {
            pos       = {-0.594,0.1,1.726},
            rows      = 10,
            width     = 550,
            font_size = 230,
            label     = "Freq",
            value     = "",
            alignment = 2
        },--Freq

-- Rituals 1
        {
            pos       = {-0.12,0.1,1.805},
            rows      = 8,
            width     = 3500,
            font_size = 200,
            label     = "Name",
            value     = "",
            alignment = 2
        },--Name
        {
            pos       = {0.316,0.1,1.805},
            rows      = 8,
            width     = 500,
            font_size = 200,
            label     = "Rank",
            value     = "",
            alignment = 2
        },--Rank
        {
            pos       = {0.438,0.1,1.805},
            rows      = 8,
            width     = 500,
            font_size = 200,
            label     = "Cost",
            value     = "",
            alignment = 2
        },--Cost
--Rituals 2
        {
            pos       = {0.9,0.1,1.805},
            rows      = 8,
            width     = 3500,
            font_size = 200,
            label     = "Name",
            value     = "",
            alignment = 2
        },--Name
        {
            pos       = {1.335,0.1,1.805},
            rows      = 8,
            width     = 500,
            font_size = 200,
            label     = "Rank",
            value     = "",
            alignment = 2
        },--Rank
        {
            pos       = {1.453,0.1,1.805},
            rows      = 8,
            width     = 500,
            font_size = 200,
            label     = "Cost",
            value     = "",
            alignment = 2
        },--Cost
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
