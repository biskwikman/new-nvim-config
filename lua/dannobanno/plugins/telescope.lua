return  {{
            "nvim-telescope/telescope-fzf-native.nvim",
            event = "VeryLazy",
            build = "make",
        },
    	{
            "nvim-telescope/telescope.nvim",
            event = "VeryLazy",
	        branch = "0.1.x",
	        dependencies = {"nvim-lua/plenary.nvim"}
        }}
