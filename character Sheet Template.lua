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
disableSave = true
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
--hero points
    --First HeroPoint
        {
            pos   = {1.124,0.1,-1.892},
            size  = 300,
            state = false
        },
    --Second HeroPoint
        {
            pos   = {1.251,0.1,-1.893},
            size  = 300,
            state = false
        },
    --Third HeroPoint
        {
            pos   = {1.377,0.1,-1.892},
            size  = 300,
            state = false
        },
--ability boosts
    -- STR partial boost
        {
            pos = {-1.339,0.1,-1.218},
            size = 120,
            state = false
        },
    -- DEX partial boost
        {
            pos = {-0.83,0.1,-1.219},
            size = 120,
            state = false
        },
    -- con partial  boost
        {
            pos = {-0.323,0.1,-1.219},
            size = 120,
            state = false
        },
    -- int partial boost
        {
            pos = {0.186,0.1,-1.217},
            size = 120,
            state = false
        },
    -- wis partial boost
        {
            pos = {0.693,0.1,-1.221},
            size = 120,
            state = false
        },
    -- cha partial boost
        {
            pos = {1.2,0.1,-1.218},
            size = 120,
            state = false
        },
--armor proficiencies
    --unarmed
        {
            pos = {-0.947,0.1,-0.807},
            size = 150,
            state = false
        },--Trained
        {
            pos = {-0.948,0.1,-0.772},
            size = 150,
            state = false
        },--Expert
        {
            pos = {-0.948,0.1,-0.735},
            size = 150,
            state = false
        },--Master
        {
            pos = {-0.947,0.1,-0.7},
            size = 150,
            state = false
        },--Legend
    --Light
        {
            pos = {-0.814,0.1,-0.812},
            size = 150,
            state = false
        },--Trained
        {
            pos = {-0.815,0.1,-0.773},
            size = 150,
            state = false
        },--Expert
        {
            pos = {-0.814,0.1,-0.735},
            size = 150,
            state = false
        },--Master
        {
            pos = {-0.812,0.1,-0.698},
            size = 150,
            state = false
        },--Legend
    -- Medium
        {
            pos = {-0.704,0.1,-0.81},
            size = 150,
            state = false
        },--Trained
        {
            pos = {-0.705,0.1,-0.769},
            size = 150,
            state = false
        },--Expert
        {
            pos = {-0.706,0.1,-0.734},
            size = 150,
            state = false
        },--Master
        {
            pos ={-0.705,0.1,-0.7},
            size = 150,
            state = false
        },--Legend
    -- Heavy
        {
            pos = {-0.589,0.1,-0.81},
            size = 150,
            state = false
        },--Trained
        {
            pos = {-0.589,0.1,-0.771},
            size = 150,
            state = false
        },--Expert
        {
            pos = {-0.59,0.1,-0.735},
            size = 150,
            state = false
        },--Master
        {
            pos = {-0.591,0.1,-0.698},
            size = 150,
            state = false
        },--Legend
--Saving throws
    --Fort
        {
            pos = {-0.218,0.1,-1.02},
            size = 140,
            state = false
        },--Trained
        {
            pos = {-0.217,0.1,-0.992},
            size = 140,
            state = false
        },--Expert
        {
            pos = {-0.217,0.1,-0.964},
            size = 140,
            state = false
        },--Master
        {
            pos = {-0.217,0.1,-0.939},
            size = 140,
            state = false
        },--Legend
    --Reflex
        {
            pos = {0.121,0.1,-1.02},
            size = 140,
            state = false
        },--Trained
        {
            pos = {0.121,0.1,-0.992},
            size = 140,
            state = false
        },--Expert
        {
            pos = {0.121,0.1,-0.965},
            size = 140,
            state = false

        },--Master
        {
            pos = {0.121,0.1,-0.939},
            size = 140,
            state = false
        },--Legend
    --Will
        {
            pos = {0.457,0.1,-1.018},
            size = 140,
            state = false
        },--Trained
        {
            pos = {0.457,0.1,-0.99},
            size = 140,
            state = false
        },--Expert
        {
            pos = {0.456,0.1,-0.964},
            size = 140,
            state = false
        },--Master
        {
            pos = {0.456,0.1,-0.939},
            size = 140,
            state = false
        },--Legend
--Death Saving throws
        {
            pos = {1.353,0.1,-0.968},
            size = 100,
            state = false
        }, --First
        {
            pos = {1.399,0.1,-0.97},
            size = 100,
            state = false
        },--Second
        {
            pos = {1.443,0.1,-0.974},
            size = 100,
            state = false
        },--Third
        {
            pos = {1.488,0.1,-0.972},
            size = 100,
            state = false
        },--Fourth
--Skills
--Perception
        {
            pos = {0.649,0.1,-0.521},
            size = 100,
            state = false
        },--Trained
        {
            pos = {0.651,0.1,-0.49},
            size = 100,
            state = false
        },--Expert
        {
            pos = {0.65,0.1,-0.462},
            size = 100,
            state = false
        },--Master
        {
            pos = {0.652,0.1,-0.433},
            size = 100,
            state = false
        },--Legend
    --Acrobatics
        {
            pos = {-0.921,0.1,-0.551},
            size = 100,
            state = false
        },--Trained
        {
            pos = {-0.921,0.1,-0.521},
            size = 100,
            state = false
        },--Expert
        {
            pos = {-0.921,0.1,-0.49},
            size = 100,
            state = false
        },--Master
        {
            pos = {-0.921,0.1,-0.462},
            size = 100,
            state = false
        },--Legend
    --Arcana
        {
            pos = {-0.921,0.1,-0.41},
            size = 100,
            state = false
        },--Trained
        {
            pos = {-0.921,0.1,-0.38},
            size = 100,
            state = false
        },--Expert
        {
            pos = {-0.921,0.1,-0.35},
            size = 100,
            state = false
        },--Master
        {
            pos = {-0.921,0.1,-0.32},
            size = 100,
            state = false
        },--Legend
    --Athletics
        {
            pos = {-0.921,0.1,-0.266},
            size = 100,
            state = false
        },--Trained
        {
            pos = {-0.921,0.1,-0.236},
            size = 100,
            state = false
        },--Expert
        {
            pos = {-0.921,0.1,-0.206},
            size = 100,
            state = false
        },--Master
        {
            pos = {-0.921,0.1,-0.176},
            size = 100,
            state = false
        },--Legend
    --Crafting
        {
            pos = {-0.921,0.1,-0.122},
            size = 100,
            state = false
        },--Trained
        {
            pos = {-0.92,0.1,-0.092},
            size = 100,
            state = false
        },--Expert
        {
            pos = {-0.922,0.1,-0.062},
            size = 100,
            state = false
        },--Master
        {
            pos = {-0.921,0.1,-0.032},
            size = 100,
            state = false
        },--Legend
    --Deception
        {
            pos = {-0.921,0.1,0.02},
            size = 100,
            state = false
        },--Trained
        {
            pos = {-0.921,0.1,0.05},
            size = 100,
            state = false
        },--Expert
        {
            pos = {-0.921,0.1,0.08},
            size = 100,
            state = false
        },--Master
        {
            pos = {-0.921,0.1,0.11},
            size = 100,
            state = false
        },--Legend
    --Diplomacy
        {
            pos = {-0.921,0.1,0.165},
            size = 100,
            state = false
        },--Trained
        {
            pos = {-0.921,0.1,0.195},
            size = 100,
            state = false
        },--Expert
        {
            pos = {-0.921,0.1,0.225},
            size = 100,
            state = false
        },--Master
        {
            pos = {-0.921,0.1,0.255},
            size = 100,
            state = false
        },--Legend
    --Intimidation
        {
            pos = {-0.921,0.1,0.31},
            size = 100,
            state = false
        },--Trained
        {
            pos = {-0.923,0.1,0.34},
            size = 100,
            state = false
        },--Expert
        {
            pos = {-0.921,0.1,0.37},
            size = 100,
            state = false
        },--Master
        {
            pos = {-0.921,0.1,0.4},
            size = 100,
            state = false
        },--Legend
    --Lore
        {
            pos = {-0.921,0.1,0.45},
            size = 100,
            state = false
        },--Trained
        {
            pos = {-0.921,0.1,0.48},
            size = 100,
            state = false
        },--Expert
        {
            pos = {-0.921,0.1,0.511},
            size = 100,
            state = false
        },--Master
        {
            pos = {-0.921,0.1,0.541},
            size = 100,
            state = false
        },--Legend
    --Lore2
        {
            pos = {-0.921,0.1,0.595},
            size = 100,
            state = false
        },--Trained
        {
            pos = {-0.921,0.1,0.625},
            size = 100,
            state = false
        },--Expert
        {
            pos = {-0.921,0.1,0.655},
            size = 100,
            state = false
        },--Master
        {
            pos = {-0.921,0.1,0.686},
            size = 100,
            state = false
        },--Legend
    --Medicine
        {
            pos = {-0.921,0.1,0.736},
            size = 100,
            state = false
        },--Trained
        {
            pos = {-0.921,0.1,0.766},
            size = 100,
            state = false
        },--Expert
        {
            pos = {-0.921,0.1,0.796},
            size = 100,
            state = false
        },--Master
        {
            pos = {-0.921,0.1,0.826},
            size = 100,
            state = false
        },--Legend
    --Nature
        {
            pos = {-0.921,0.1,0.882},
            size = 100,
            state = false
        },--Trained
        {
            pos = {-0.921,0.1,0.912},
            size = 100,
            state = false
        },--Expert
        {
            pos = {-0.921,0.1,0.942},
            size = 100,
            state = false
        },--Master
        {
            pos = {-0.921,0.1,0.972},
            size = 100,
            state = false
        },--Legend
    --Occultism
        {
            pos = {-0.922,0.1,1.022},
            size = 100,
            state = false
        },--Trained
        {
            pos = {-0.921,0.1,1.053},
            size = 100,
            state = false
        },--Expert
        {
            pos = {-0.921,0.1,1.184},
            size = 100,
            state = false
        },--Master
        {
            pos = {-0.921,0.1,1.114},
            size = 100,
            state = false
        },--Legend
    --Performance
        {
            pos = {-0.921,0.1,1.17},
            size = 100,
            state = false
        },--Trained
        {
            pos = {-0.921,0.1,1.20},
            size = 100,
            state = false
        },--Expert
        {
            pos = {-0.921,0.1,1.23},
            size = 100,
            state = false
        },--Master
        {
            pos = {-0.921,0.1,1.26},
            size = 100,
            state = false
        },--Legend
    --Religion
        {
            pos = {-0.921,0.1,1.32},
            size = 100,
            state = false
        },--Trained
        {
            pos = {-0.922,0.1,1.342},
            size = 100,
            state = false
        },--Expert
        {
            pos = {-0.921,0.1,1.372},
            size = 100,
            state = false
        },--Master
        {
            pos = {-0.921,0.1,1.40},
            size = 100,
            state = false
        },--Legend
    --Society
        {
            pos = {-0.921,0.1,1.45},
            size = 100,
            state = false
        },--Trained
        {
            pos = {-0.921,0.1,1.48},
            size = 100,
            state = false
        },--Expert
        {
            pos = {-0.921,0.1,1.51},
            size = 100,
            state = false
        },--Master
        {
            pos = {-0.921,0.1,1.54},
            size = 100,
            state = false
        },--Legend
    --Stealth
        {
            pos = {-0.921,0.1,1.59},
            size = 100,
            state = false
        },--Trained
        {
            pos = {-0.921,0.1,1.62},
            size = 100,
            state = false
        },--Expert
        {
            pos = {-0.921,0.1,1.65},
            size = 100,
            state = false
        },--Master
        {
            pos = {-0.921,0.1,1.68},
            size = 100,
            state = false
        },--Legend
    --Survival
        {
            pos = {-0.921,0.1,1.73},
            size = 100,
            state = false
        },--Trained
        {
            pos = {-0.921,0.1,1.76},
            size = 100,
            state = false
        },--Expert
        {
            pos = {-0.921,0.1,1.79},
            size = 100,
            state = false
        },--Master
        {
            pos = {-0.921,0.1,1.81},
            size = 100,
            state = false
        },--Legend
    --Thievery
        {
            pos = {-0.921,0.1,1.86},
            size = 100,
            state = false
        },--Trained
        {
            pos = {-0.921,0.1,1.89},
            size = 100,
            state = false
        },--Expert
        {
            pos = {-0.921,0.1,1.92},
            size = 100,
            state = false
        },--Master
        {
            pos = {-0.921,0.1,1.95},
            size = 100,
            state = false
        },--Legend
--Weapon Proficiencies
    --unarmed
        {
            pos = {0.06,0.1,1.51},
            size = 150,
            state = false
        },--Trained
        {
            pos = {0.06,0.1,1.547},
            size = 150,
            state = false
        },--Expert
        {
            pos = {0.06,0.1,1.582},
            size = 150,
            state = false
        },--Master
        {
            pos = {0.06,0.1,1.617},
            size = 150,
            state = false
        },--Legend
    --Simple
        {
            pos = {0.18,0.1,1.51},
            size = 150,
            state = false
        },--Trained
        {
            pos = {0.18,0.1,1.547},
            size = 150,
            state = false
        },--Expert
        {
            pos = {0.18,0.1,1.582},
            size = 150,
            state = false
        },--Master
        {
            pos = {0.18,0.1,1.617},
            size = 150,
            state = false
        },--Legend
    --Martial
        {
            pos = {0.33,0.1,1.51},
            size = 150,
            state = false
        },--Trained
        {
            pos = {0.31,0.1,1.547},
            size = 150,
            state = false
        },--Expert
        {
            pos = {0.31,0.1,1.582},
            size = 150,
            state = false
        },--Master
        {
            pos = {0.31,0.1,1.617},
            size = 150,
            state = false
        },--Legend
    --Advanced
        {
            pos = {0.42,0.1,1.51},
            size = 150,
            state = false
        },--Trained
        {
            pos = {0.42,0.1,1.547},
            size = 150,
            state = false
        },--Expert
        {
            pos = {0.42,0.1,1.582},
            size = 150,
            state = false
        },--Master
        {
            pos = {0.42,0.1,1.617},
            size = 150,
            state = false
        },--Legend
    --Other
        {
            pos = {0.536,0.1,1.51},
            size = 150,
            state = false
        },--Trained
        {
            pos = {0.536,0.1,1.547},
            size = 150,
            state = false
        },--Expert
        {
            pos = {0.536,0.1,1.582},
            size = 150,
            state = false
        },--Master
        {
            pos = {0.536,0.1,1.617},
            size = 150,
            state = false
        },--Legend
--Damage types
    --Weapon 1
        {
            pos = {1.47,0.1,0.074},
            size = 100,
            state = false
        },--Bludgeoning
        {
            pos = {1.47,0.1,0.109},
            size = 100,
            state = false
        },--Piercing
        {
            pos = {1.47,0.1,0.143},
            size = 100,
            state = false
        },--Slashing
    --Weapon 2
        {
            pos = {1.47,0.1,0.342},
            size = 100,
            state = false
        },--Bludgeoning
        {
            pos = {1.47,0.1,0.376},
            size = 100,
            state = false
        },--Piercing
        {
            pos = {1.47,0.1,0.411},
            size = 100,
            state = false
        },--Slashing
    --Weapon 3
        {
            pos = {1.47,0.1,0.61},
            size = 100,
            state = false
        },--Bludgeoning
        {
            pos = {1.47,0.1,0.644},
            size = 100,
            state = false
        },--Piercing
        {
            pos = {1.47,0.1,0.678},
            size = 100,
            state = false
        },--Slashing
    --Weapon 4
        {
            pos = {1.47,0.1,0.952},
            size = 100,
            state = false
        },--Bludgeoning
        {
            pos = {1.47,0.1,0.986},
            size = 100,
            state = false
        },--Piercing
        {
            pos = {1.47,0.1,1.02},
            size = 100,
            state = false
        },--Slashing
    --Weapon 5
        {
            pos = {1.47,0.1,1.218},
            size = 100,
            state = false
        },--Bludgeoning
        {
            pos = {1.47,0.1,1.253},
            size = 100,
            state = false
        },--Piercing
        {
            pos = {1.47,0.1,1.288},
            size = 100,
            state = false
        },--Slashing

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
        {
            pos = {0.972,0.1,-0.97},
            size = 800,
            value = 0,
            hideBG = true
        },
        --End of counters
    },
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
--Character name
        {
            pos       = {0.0,0.1,-1.859},
            rows      = 1,
            width     = 4700,
            font_size = 600,
            label     = "Character Name",
            value     = "",
            alignment = 3
        },
--Player Name
        {
            pos       = {0,0.1,-1.74},
            rows      = 1,
            width     = 4700,
            font_size = 300,
            label     = "Player Name",
            value     = "",
            alignment = 3
        },
--Background
        {
            pos       = {0,0.1,-1.59},
            rows      = 1,
            width     = 4700,
            font_size = 375,
            label     = "Background",
            value     = "",
            alignment = 3
        },
    --Background Notes
        {
            pos       = {0,0.1,-1.46},
            rows      = 2,
            width     = 4700,
            font_size = 300,
            label     = "Background Notes",
            value     = "",
            alignment = 3
        },
--Skill Notes
        {
            pos       = {-0.21,0.1,0.75},
            rows      = 24,
            width     = 1800,
            font_size = 500,
            label     = "Skill Notes",
            value     = "",
            alignment = 2
        },
    --Max HP
        {
            pos       = {0.627,0.1,-0.97},
            rows      = 1,
            width     = 500,
            font_size = 400,
            label     = "0",
            value     = "",
            alignment = 3
        },
--Class
        {
            pos       = {1.01,0.1,-1.59},
            rows      = 1,
            width     = 4700,
            font_size = 375,
            label     = "Class",
            value     = "",
            alignment = 3
        },
    --Class Notes
        {
            pos       = {1.01,0.1,-1.46},
            rows      = 2,
            width     = 4700,
            font_size = 300,
            label     = "Class Notes",
            value     = "",
            alignment = 3
        },
--Ancestry
        {
            pos       = {-1.01,0.1,-1.59},
            rows      = 1,
            width     = 4700,
            font_size = 375,
            label     = "Ancestry",
            value     = "",
            alignment = 3
        },
        --Ancestry notes
        {
            pos       = {-1.11,0.1,-1.46},
            rows      = 2,
            width     = 3800,
            font_size = 300,
            label     = "Heritage and traits",
            value     = "",
            alignment = 3
        },
    --Size
        {
            pos       = {-0.613,0.1,-1.461},
            rows      = 1,
            width     = 750,
            font_size = 600,
            label     = "Size",
            value     = "",
            alignment = 3
        },
--Level
        {
            pos = {0.62,0.1,-1.818},
            rows = 1,
            width = 450,
            font_size = 450,
            label = "1",
            value = "",
            alignment = 3
        },
        {
            pos = {0.86,0.1,-1.817},
            rows = 1,
            width = 1250,
            font_size = 450,
            label = "0",
            value = "",
            alignment = 3
        },
--Ability Scores
        {
            pos = {1.101,0.1,-1.251},
            rows = 1,
            width = 450,
            font_size = 450,
            label = "0",
            value = "",
            alignment = 3
        },--Charisma
        {
            pos = {0.586,0.1,-1.251},
            rows = 1,
            width = 450,
            font_size = 450,
            label = "0",
            value = "",
            alignment = 3
        },--Wisdom
        {
            pos = {0.083,0.1,-1.251},
            rows = 1,
            width = 450,
            font_size = 450,
            label = "0",
            value = "",
            alignment = 3
        },--Intelligence
        {
            pos = {-0.433,0.1,-1.251},
            rows = 1,
            width = 450,
            font_size = 450,
            label = "0",
            value = "",
            alignment = 3
        },--Constitution
        {
            pos = {-0.938,0.1,-1.251},
            rows = 1,
            width = 450,
            font_size = 450,
            label = "0",
            value = "",
            alignment = 3
        },--Dexterity
        {
            pos = {-1.446,0.1,-1.251},
            rows = 1,
            width = 450,
            font_size = 450,
            label = "0",
            value = "",
            alignment = 3
        },--Strength


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
