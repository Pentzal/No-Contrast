--- STEAMODDED HEADER
--- MOD_NAME: No Contrast
--- MOD_ID: NoCon
--- PREFIX: no
--- MOD_AUTHOR: [Pentzal]
--- MOD_DESCRIPTION: Adds a "No Contrast" option to all suits' base Deck Skins. It is not recommended.
----------------------------------------------
------------MOD CODE -------------------------
local suits = { 'Hearts', 'Diamonds', 'Clubs', 'Spades', 'bunc_Fleurons', 'bunc_Halberds' }
local fullRanks = {"Ace", "King", "Queen", "Jack", "10", "9", "8", "7", "6", "5", "4", "3", "2"}
local face = {"King", "Queen", "Jack"}
local red = HEX("fd5f55")
local black = HEX("39494c")
local suitColor = { red, red, black, black, red, black }

SMODS.Atlas{ key = 'ContrastCards', px = 71, py = 95, path = 'NoContrast.png' }
SMODS.Atlas{ key = 'ContrastUI', px = 18, py = 18, path = 'NoConUI.png' }
SMODS.Atlas{ key = 'ContrastCards_exotic', px = 71, py = 95, path = 'Exotic/NoContrast.png' }
SMODS.Atlas{ key = 'ContrastUI_exotic', px = 18, py = 18, path = 'Exotic/NoConUI.png' }

for _, suit in ipairs(suits) do
    SMODS.DeckSkin.add_palette(SMODS.DeckSkins['default_'..suit], {
        key = 'no_Contrast_'..suit,
        ranks = fullRanks,
        display_ranks = face,
        atlas = (_ < 5 and 'no_ContrastCards') or (_ > 4 and 'no_ContrastCards_exotic'),
        pos_style = 'deck',
        loc_txt = {
            ['en-us'] = "No Contrast Colors"
        },
        colour = suitColor[_],
        suit_icon = {
            atlas = (_ < 5 and 'no_ContrastUI') or (_ > 4 and 'no_ContrastUI_exotic'),
            pos = { x = ((_ - 1) % 4), y = 0 }
        }
    })
end
----------------------------------------------
------------MOD CODE END----------------------
----------------------------------------------