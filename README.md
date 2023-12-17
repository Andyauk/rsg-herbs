# RexshackGaming

- discord : https://discord.gg/s5uSk56B65
- github : https://github.com/Rexshack-RedM

# Dependancies

- rsg-core

# Installation

- Additional Information: With this repository it is not necessary to have in server

rsg-sellvendor is a good place to add a way to sell the items, or use them for a way to make items, or cooking.

    -- valentine
    {
        prompt = "val-sellshop",  -- must be unique
        header = "Valentine Vendor", -- menu header
        coords = vector3(-355.7784, 775.41345, 116.23655 -0.8), -- location of sell shop
        blip = { -- blip settings
            blipSprite = 'blip_shop_market_stall',
            blipScale = 0.2,
            blipName = "Valentine Vendor",
        },
        showblip = true,
        shopdata = { -- shop data
            {
                title = "Blueberry",
                description = "sell blueberry",
                price = 0.03,
                item = "blueberry",
            image = "blueberry.png"
            },
            {
                title = "Stick",
                description = "sell stick",
                price = 0.03,
                item = "stick",
                image = "stick.png"
            },
                        {
                title = "Sage",
                description = "sell sage",
                price = 0.03,
                item = "sager",
                image = "sage.png"
            },
                        {
                title = "Mint",
                description = "sell mint",
                price = 0.03,
                item = "mint",
                image = "mint.png"
            },
                        {
                title = "Thyme",
                description = "sell thyme",
                price = 0.03,
                item = "thyme",
                image = "thyme.png"
            },
        },
    },

- remove to your server.cfg file : rsg-goldpaning
- remove to your server.cfg file : rsg-goldsmelt

- ensure that the dependancies are added and started
- add rsg-herbs to your resources folder
- add items to your "\rsg-core\shared\items.lua"
- add images to your "\rsg-inventory\html\images"

# Starting the resource

- add the following to your server.cfg file : ensure rsg-herbs

# Herbs System

- Locations bushes

# Credits

- RexShack
- andyauk
- alexandercrews
- based of redemrp blueberry
