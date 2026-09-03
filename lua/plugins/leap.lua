-- vim-repeat - Make other plugins repeatable with .
return {
  { "tpope/vim-repeat", event = "VeryLazy" },
  {
    "andyg/leap.nvim",
    url = "https://codeberg.org/andyg/leap.nvim",
    -- Git is currently configured to use an unavailable localhost proxy.
    -- Keep Leap disabled so Lazy does not retry the clone on every startup;
    -- LazyVim's already-installed flash.nvim provides equivalent jump motions.
    enabled = false,
  },
}
