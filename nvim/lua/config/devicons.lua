local devicons = require("nvim-web-devicons")

devicons.setup({
  override_by_extension = {
    -- C / C++
    ["c"] = {
      icon = "",
      color = "#519aba",
      name = "C",
    },

    ["h"] = {
      icon = "",
      color = "#a074c4",
      name = "CHeader",
    },

    ["cpp"] = {
      icon = "",
      color = "#519aba",
      name = "Cpp",
    },

    ["cc"] = {
      icon = "",
      color = "#519aba",
      name = "Cpp",
    },

    ["cxx"] = {
      icon = "",
      color = "#519aba",
      name = "Cpp",
    },

    ["hpp"] = {
      icon = "",
      color = "#a074c4",
      name = "CppHeader",
    },

    -- Java
    ["java"] = {
      icon = "",
      color = "#cc3e44",
      name = "Java",
    },

    -- JavaScript
    ["js"] = {
      icon = "",
      color = "#cbcb41",
      name = "JavaScript",
    },

    ["jsx"] = {
      icon = "",
      color = "#20c2e3",
      name = "JavaScriptReact",
    },

    -- TypeScript
    ["ts"] = {
      icon = "",
      color = "#519aba",
      name = "TypeScript",
    },

    ["tsx"] = {
      icon = "",
      color = "#519aba",
      name = "TypeScriptReact",
    },

    -- Web
    ["html"] = {
      icon = "",
      color = "#e44d26",
      name = "HTML",
    },

    ["css"] = {
      icon = "",
      color = "#563d7c",
      name = "CSS",
    },

    ["scss"] = {
      icon = "",
      color = "#f55385",
      name = "SCSS",
    },

    -- Data
    ["json"] = {
      icon = "",
      color = "#cbcb41",
      name = "JSON",
    },

    ["xml"] = {
      icon = "󰗀",
      color = "#e37933",
      name = "XML",
    },

    ["yaml"] = {
      icon = "",
      color = "#cb171e",
      name = "YAML",
    },

    ["yml"] = {
      icon = "",
      color = "#cb171e",
      name = "YAML",
    },

    -- Python
    ["py"] = {
      icon = "",
      color = "#ffbc03",
      name = "Python",
    },

    -- Rust
    ["rs"] = {
      icon = "",
      color = "#dea584",
      name = "Rust",
    },

    -- Go
    ["go"] = {
      icon = "",
      color = "#519aba",
      name = "Go",
    },

    -- Shell
    ["sh"] = {
      icon = "",
      color = "#89e051",
      name = "Shell",
    },

    ["bash"] = {
      icon = "",
      color = "#89e051",
      name = "Bash",
    },

    -- Markdown
    ["md"] = {
      icon = "",
      color = "#519aba",
      name = "Markdown",
    },

    -- SQL
    ["sql"] = {
      icon = "",
      color = "#dad8d8",
      name = "SQL",
    },

    -- Lua
    ["lua"] = {
      icon = "",
      color = "#51a0cf",
      name = "Lua",
    },
  },

  override_by_filename = {
    ["Dockerfile"] = {
      icon = "",
      color = "#458ee6",
      name = "Dockerfile",
    },

    [".gitignore"] = {
      icon = "",
      color = "#f1502f",
      name = "GitIgnore",
    },

    ["Makefile"] = {
      icon = "",
      color = "#6d8086",
      name = "Makefile",
    },

    ["CMakeLists.txt"] = {
      icon = "",
      color = "#6d8086",
      name = "CMake",
    },

    ["pom.xml"] = {
      icon = "",
      color = "#e34c26",
      name = "Maven",
    },

    ["package.json"] = {
      icon = "",
      color = "#e8274b",
      name = "PackageJson",
    },

    ["package-lock.json"] = {
      icon = "",
      color = "#e8274b",
      name = "PackageLockJson",
    },

    ["tsconfig.json"] = {
      icon = "",
      color = "#519aba",
      name = "TsConfig",
    },
  },
})
