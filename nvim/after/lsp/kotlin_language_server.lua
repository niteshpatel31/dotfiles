return {
  cmd = { "kotlin-language-server" },
  filetypes = { "kotlin" },
  root_markers = { "settings.gradle", "settings.gradle.kts", "build.gradle", "build.gradle.kts", ".git" },
  init_options = {
    storagePath = vim.fn.expand("~/.cache/kotlin-language-server"),
  },
}
