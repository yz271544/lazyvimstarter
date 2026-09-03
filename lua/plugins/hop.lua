-- Hop.nvim - Jump anywhere with 1-2 keystrokes
return {
  "smoka7/hop.nvim",
  enabled = true,
  config = function()
    require("hop").setup({
      -- 标签样式
      label_template = "{%d}",
      -- 2字符跳转
      multi_jetkick_dir = require("hop.hint").HintDirection.AFTER_CURSOR_S,
    })

    local map = vim.keymap.set
    map({ "n", "x", "o" }, "s", function()
      require("hop").hint_char1({ direction = require("hop.hint").HintDirection.AFTER_CURSOR_S })
    end, { desc = "Hop forward" })
    map({ "n", "x", "o" }, "S", function()
      require("hop").hint_char1({ direction = require("hop.hint").HintDirection.BEFORE_CURSOR_S })
    end, { desc = "Hop backward" })
    map({ "n", "x", "o" }, "gs", function()
      require("hop").hint_words()
    end, { desc = "Hop to words" })
  end,
}