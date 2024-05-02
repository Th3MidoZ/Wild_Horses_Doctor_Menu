Config = {}

Config.Allowed = { 
    {group = 'admin'},

}

Config.Medic = {
    {job = 'doctor'},

}

Config.MedicHorse = {

    {   
        name = "White Arabian Horse",
        model = "a_c_horse_arabian_white",
        outfit = 1
    }, -- for more copy and paste like below
    {   
    name = "Shire",
    model = "a_c_horse_shire_lightgrey",
    outfit = 1 -- Usually some horses got from 1 to 4 and some only 1
    },


}
Config.Spawncmd = "mhorses" -- cmd to spawn wild horses
Config.doctormenu = "doctormenu" -- cmd to open doctor menu
Config.Notify = true -- if true and someone who doesn't have the permission used the command it will use Config.Msg Message
Config.Msg = "You are not allowed to use this command!" -- INCASE someone doesn't have permissions to use the command
Config.Print = true -- This will print when someone use the command in F8 to ensure the horses spawned


-- Webhook infos left for easy edit
Config.Webhook = {
    UseWebhook = false,     -- Set to 'true' to enable webhook integration for logging events
    WebhookUrl = "",        -- The URL of the Discord webhook
    WebhookTitle = "MidoZ",      -- The title for webhook messages
    WebhookColor = 15105570, -- webhook color
    WebhookName = "MidoZ Test",       -- The name that will appear as the sender of the webhook messages
    WebhookLogo = "https://i.imgur.com/eEMy8Mx.png",       -- URL of the logo image to display in the webhook embed
    WebhookLogoFooter = "https://i.imgur.com/eEMy8Mx.png", -- URL of the footer logo image to display in the webhook embed
    WebhookAvatar = "https://i.imgur.com/eEMy8Mx.png"      -- URL of the avatar image for the webhook sender
}


Config.Horses = {
        {
            model = "a_c_horse_arabian_white", -- arabian
            coords = {
                {x = -1959.7, y = 2152.84, z = 327.49}, -- valentine side
                {x = -842.54, y = -1896.74, z = 50.7}, -- blackwater side
                {x = -2784.35, y = -3039.89, z = 11.56}, -- Armadilo

            } , -- Valentine Side
            outfit = 1
        },
    
        {
            model = "a_c_horse_shire_lightgrey", -- shire
            coords = {
             {x = 2232.62, y = 122.77, z = 58.87}, -- Valentine Side
             {x = -2681.69, y = -1425.81, z = 149.35}, -- blackwater side
             {x = -2703.87, y = -2202.8, z = 81.32}, -- Armadilo
            }, 
            outfit = 1
        },
        {
            model = "a_c_horse_gypsycob_palominoblagdon", -- GypsyCob
            coords = { 
                {x = 1710.05, y = 1455.18, z = 147.42},  -- Valentine Side
                {x = -1855.56, y = -2197.13, z = 45.73}, -- Blackwater side
                {x = -3085.38, y = -2187.7, z = 74.86}, -- Armadilo
                },
            outfit = 1
        },
    
        {
            model = "a_c_horse_belgian_mealychestnut", -- Belgian Draft
            coords =  {
                {x = 294.35, y = -34.47, z = 107.7}, -- Valentine Side
                {x = -1474.07, y = -2138.17, z = 48.18}, -- Blackwater side
                {x = -3630.96, y = -2068.86, z = -12.11}, -- Armadilo
              },  
            outfit = 1
        },
        
        {
            model = "a_c_horse_missourifoxtrotter_blueroan", -- MissouriFoxTrooter
            coords = {
                {x = 1543.01, y = -96.52, z = 92.5}, -- Valentine Side
                {x = -2144.92, y = -1424.51, z = 135.27}, -- Blackwater Side
                {x = -4366.78, y = -2881.81, z = -15.15}, -- Armadilo Side
             },
            outfit = 1
        },
        {
            model = "a_c_horse_andalusian_perlino", -- 
            coords = {
                {x = 213.69, y = 1380.69, z = 169.9}, -- Valentine Side
                {x = -2001.74, y = -1191.93, z = 98.54}, -- Blackwater Side
                {x = -6447.99, y = -3538.0, z = -25.28} -- Armadilo Side
             },
            outfit = 1
        },
        {
            model = "a_c_horse_dutchwarmblood_sealbrown", 
            coords = {
            {x = 1957.88, y = -873.2, z = 41.85}, -- Valentine Side
            {x = -1754.39, y = -929.79, z = 102.33}, -- Blackwater side
            {x = -4763.34, y = -3727.05, z = 9.98}, -- Armadilo Side
         }, 
            outfit = 1
        },  
    
     }