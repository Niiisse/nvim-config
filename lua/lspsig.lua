require "lsp_signature".setup({
    bind = true, -- This is mandatory, otherwise border config won't get registered.
    -- always_trigger = true,
    doc_lines = 1,
    zindex = 50,
    handler_opts = {
      border = "rounded"
    }
  })
