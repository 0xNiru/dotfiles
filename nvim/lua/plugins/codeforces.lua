return {
  "L3MON4D3/LuaSnip",
  "xeluxee/competitest.nvim",
  "MunifTanjim/nui.nvim",
  config = function()
    require("competitest").setup()
  end,
  config = function()
    local ls = require("luasnip")
    local s = ls.snippet
    local t = ls.text_node
    local i = ls.insert_node

    -- Define snippets directly
    ls.add_snippets("cpp", {
      s("!cf", {
        t({
          "#include <bits/stdc++.h>",
          "using namespace std;",
          "",
          "int main() {",
          "    ios::sync_with_stdio(0);",
          "    cin.tie(0);",
          "    ",
        }),
        i(1),
        t({
          "",
          "    return 0;",
          "}",
        }),
      }),
    })

    -- Optional: Tab key mappings for jumping in snippets
    vim.keymap.set({ "i", "s" }, "<Tab>", function()
      if ls.expand_or_jumpable() then
        return "<Plug>luasnip-expand-or-jump"
      else
        return "<Tab>"
      end
    end, { expr = true })

    vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
      if ls.jumpable(-1) then
        return "<Plug>luasnip-jump-prev"
      else
        return "<S-Tab>"
      end
    end, { expr = true })
  end,
}

