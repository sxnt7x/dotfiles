return {
    "goolord/alpha-nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.startify")

        dashboard.section.header.val = {
            [[    _   ____________ _    ________  ___]],
            [[   / | / / ____/ __ \ |  / /  _/  |/  /]],
            [[  /  |/ / __/ / / / / | / // // /|_/ / ]],
            [[ / /|  / /___/ /_/ /| |/ // // /  / /  ]],
            [[/_/ |_/_____/\____/ |___/___/_/  /_/   ]],
        }
        dashboard.section.top_buttons.val = {
            dashboard.button("n", "  New file", ":ene <BAR> startinsert<CR>"),
            dashboard.button("l", "󰒲  Lazy dashboard", ":Lazy<CR>"),
            dashboard.button("m", "  Mason dashboard", ":Mason<CR>"),
        }

        dashboard.section.mru.val = { { type = "padding", val = 0 } }

        dashboard.section.bottom_buttons.val = {
            dashboard.button("q", "󰿅  Quit neovim", ":qa<CR>"),
        }

        local quotes = {
            "“Come to me, all you who are weary anj burdened, and I will give you rest.” - Matthew 11:28 NIV",
            "“I can do all things through Christ who strengthens me.” — Philippians 4:13",
            "“Your word is a lamp for my feet, a light on my path.” — Psalm 119:105",
            "“We love because he first loved us.” — 1 John 4:19",
            "“I have loved you with an everlasting love; I have drawn you with unfailing kindness.” — Jeremiah 31:3",
            "“But I say to you, love your enemies and pray for those who persecute you.” — Matthew 5:44",
            "“But as for me, I watch in hope for the Lord, I wait for God my Savior; my God will hear me.” — Micah 7:7",
            "“Then Jesus said, “Did I not tell you that if you believe, you will see the glory of God?” — John 11:40",
            "“Everything is possible for one who believes.” — Mark 9:23",
            "“Therefore I tell you, whatever you ask for in prayer, believe that you have received it, and it will be yours.” — Mark 11:24",
            "“Anyone who withholds kindness from a friend forsakes the fear of the Almighty.” —Job 6:14",
            "“As iron sharpens iron, so one person sharpens another.” — Proverbs 27:17",
            "“Oil and perfume make the heart glad, and the sweetness of a friend comes from his earnest counsel.” — Proverbs 27:9",
        }

        math.randomseed(os.time())
        local quote = " " .. quotes[math.random(1, #quotes)]

        dashboard.section.footer.val = {
            { type = "padding", val = 2 },
            { type = "text", val = quote },
        }

        alpha.setup(dashboard.config)
    end,
}
