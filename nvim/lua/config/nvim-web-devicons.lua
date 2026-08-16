local devicons = require("nvim-web-devicons")

devicons.setup({
  -- Keep the default icons provided by nvim-web-devicons.
  default = true,

  -- File extension overrides
  override_by_extension = {
    -- =========================================================
    -- C
    -- =========================================================

    c = {
      icon = "",
      color = "#599eff",
      name = "C",
    },

    h = {
      icon = "",
      color = "#a074c4",
      name = "CHeader",
    },

    -- =========================================================
    -- C++
    -- =========================================================

    cpp = {
      icon = "",
      color = "#519aba",
      name = "Cpp",
    },

    cc = {
      icon = "",
      color = "#519aba",
      name = "Cpp",
    },

    cxx = {
      icon = "",
      color = "#519aba",
      name = "Cpp",
    },

    hpp = {
      icon = "",
      color = "#a074c4",
      name = "CppHeader",
    },

    hh = {
      icon = "",
      color = "#a074c4",
      name = "CppHeader",
    },

    hxx = {
      icon = "",
      color = "#a074c4",
      name = "CppHeader",
    },

    -- =========================================================
    -- Java
    -- =========================================================

    java = {
      icon = "",
      color = "#cc3e44",
      name = "Java",
    },

    -- Compiled Java bytecode
    ["class"] = {
      icon = "",
      color = "#cc3e44",
      name = "JavaClass",
    },

    -- =========================================================
    -- JavaScript
    -- =========================================================

    js = {
      icon = "",
      color = "#cbcb41",
      name = "JavaScript",
    },

    jsx = {
      icon = "",
      color = "#20c2e3",
      name = "JavaScriptReact",
    },

    mjs = {
      icon = "",
      color = "#cbcb41",
      name = "JavaScriptModule",
    },

    cjs = {
      icon = "",
      color = "#cbcb41",
      name = "JavaScriptCommonJS",
    },

    -- =========================================================
    -- TypeScript
    -- =========================================================

    ts = {
      icon = "",
      color = "#519aba",
      name = "TypeScript",
    },

    tsx = {
      icon = "",
      color = "#519aba",
      name = "TypeScriptReact",
    },

    mts = {
      icon = "",
      color = "#519aba",
      name = "TypeScriptModule",
    },

    cts = {
      icon = "",
      color = "#519aba",
      name = "TypeScriptCommonJS",
    },

    -- =========================================================
    -- Web
    -- =========================================================

    html = {
      icon = "",
      color = "#e44d26",
      name = "HTML",
    },

    htm = {
      icon = "",
      color = "#e44d26",
      name = "HTML",
    },

    css = {
      icon = "",
      color = "#563d7c",
      name = "CSS",
    },

    scss = {
      icon = "",
      color = "#f55385",
      name = "SCSS",
    },

    sass = {
      icon = "",
      color = "#f55385",
      name = "Sass",
    },

    -- =========================================================
    -- Data / Config
    -- =========================================================

    json = {
      icon = "",
      color = "#cbcb41",
      name = "JSON",
    },

    xml = {
      icon = "󰗀",
      color = "#e37933",
      name = "XML",
    },

    yaml = {
      icon = "",
      color = "#cb171e",
      name = "YAML",
    },

    yml = {
      icon = "",
      color = "#cb171e",
      name = "YAML",
    },

    toml = {
      icon = "",
      color = "#9c4221",
      name = "TOML",
    },

    -- =========================================================
    -- Python
    -- =========================================================

    py = {
      icon = "",
      color = "#ffbc03",
      name = "Python",
    },

    -- =========================================================
    -- Go
    -- =========================================================

    go = {
      icon = "",
      color = "#519aba",
      name = "Go",
    },

    -- =========================================================
    -- Rust
    -- =========================================================

    rs = {
      icon = "",
      color = "#dea584",
      name = "Rust",
    },

    -- =========================================================
    -- Lua
    -- =========================================================

    lua = {
      icon = "",
      color = "#51a0cf",
      name = "Lua",
    },

    -- =========================================================
    -- Shell
    -- =========================================================

    sh = {
      icon = "",
      color = "#89e051",
      name = "Shell",
    },

    bash = {
      icon = "",
      color = "#89e051",
      name = "Bash",
    },

    -- =========================================================
    -- Markdown
    -- =========================================================

    md = {
      icon = "",
      color = "#519aba",
      name = "Markdown",
    },

    -- =========================================================
    -- SQL
    -- =========================================================

    sql = {
      icon = "",
      color = "#dad8d8",
      name = "SQL",
    },
  },

  -- File-name specific icons
  override_by_filename = {
    -- =========================================================
    -- Java / Spring
    -- =========================================================

    ["pom.xml"] = {
      icon = "",
      color = "#e34c26",
      name = "Maven",
    },

    ["build.gradle"] = {
      icon = "",
      color = "#02303a",
      name = "Gradle",
    },

    ["build.gradle.kts"] = {
      icon = "",
      color = "#7f52ff",
      name = "GradleKotlin",
    },

    ["application.properties"] = {
      icon = "",
      color = "#6d8086",
      name = "SpringProperties",
    },

    ["application.yml"] = {
      icon = "",
      color = "#cb171e",
      name = "SpringYAML",
    },

    ["application.yaml"] = {
      icon = "",
      color = "#cb171e",
      name = "SpringYAML",
    },

    -- =========================================================
    -- JavaScript / MERN
    -- =========================================================

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
      name = "TSConfig",
    },

    -- =========================================================
    -- C / C++
    -- =========================================================

    ["CMakeLists.txt"] = {
      icon = "",
      color = "#6d8086",
      name = "CMake",
    },

    ["Makefile"] = {
      icon = "",
      color = "#6d8086",
      name = "Makefile",
    },

    -- =========================================================
    -- DevOps
    -- =========================================================

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
  },
})
