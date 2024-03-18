return {
	"norcalli/nvim-colorizer.lua",

	lazy = true,
	event = { "BufReadPre", "BufNewFile" },

	opts = {},
	config = function(_, opts)
		require("colorizer").setup(opts)

		vim.defer_fn(function()
			require("colorizer").attach_to_buffer(0)
		end, 0)
	end
}
