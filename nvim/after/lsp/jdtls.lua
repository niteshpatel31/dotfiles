return {
  cmd = {
    "jdtls",
  },

  filetypes = {
    "java",
  },

  root_markers = {
    "pom.xml",
    "mvnw",
    "build.gradle",
    "build.gradle.kts",
    "gradlew",
    "settings.gradle",
    "settings.gradle.kts",
    ".git",
  },

  settings = {
    java = {
      configuration = {
        updateBuildConfiguration = "automatic",
      },

      maven = {
        downloadSources = true,
      },

      references = {
        includeDecompiledSources = true,
      },

      signatureHelp = {
        enabled = true,
      },

      format = {
        enabled = true,
      },

      saveActions = {
        organizeImports = true,
      },

      completion = {
        favoriteStaticMembers = {
          "org.junit.jupiter.api.Assertions.*",
          "org.mockito.Mockito.*",
        },
      },

      contentProvider = {
        preferred = "fernflower",
      },
    },
  },
}
