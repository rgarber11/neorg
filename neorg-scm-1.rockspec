local MODREV, SPECREV = "scm", "-1"
rockspec_format = "3.0"
package = "neorg"
version = MODREV .. SPECREV

description = {
	summary = "Modernity meets insane extensibility. The future of organizing your life in Neovim.",
	labels = { "neovim" },
	homepage = "https://github.com/nvim-neorg/neorg",
	license = "GPL-3.0",
}

dependencies = {
	"lua >= 5.1, < 5.4",
    "nvim-nio",
    -- "norgopolis-client.lua >= 0.2.0",
    -- "norgopolis-server.lua >= 1.3.1",
    "lua-utils.nvim",
    "pathlib.nvim ~> 2.2",
}

source = {
	url = "http://github.com/nvim-neorg/neorg/archive/v" .. MODREV .. ".zip",
}

if MODREV == "scm" then
	source = {
		url = "git://github.com/nvim-neorg/neorg",
	}
end

build = {
   type = "builtin",
   copy_directories = {
       "queries",
       "ftdetect",
       "doc",
   }
}
