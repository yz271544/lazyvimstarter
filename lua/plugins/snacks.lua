-- ~/.config/nvim/lua/plugins/snacks.lua
return {
  {
    "folke/snacks.nvim",
    opts = {
      image = {
        -- 你可以在这里进行个性化设置
        enabled = true, -- 启用图片插件
        -- 下面的配置可以让你在打开图片文件时，自动在一个新buffer里显示它
        hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp" },
        -- 如果你希望在 Markdown 或 HTML 文档里也自动渲染图片，可以开启这个
        doc = {
          enabled = true,
          inline = true, -- 在支持的情况下，图片会直接显示在文本行间
        },
      },
    },
  },
}
