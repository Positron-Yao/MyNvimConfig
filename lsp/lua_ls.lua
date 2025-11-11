return {
    settings = {
        Lua = {
            diagnostics = {
            -- 在此添加xmake的全局API
                globals = {
                    --- # nvim
                    "vim",

                    --- # xmake
                    -- 全局接口
                    "set_project", "set_version", "set_xmakever", "add_rules", "add_subdirs", "add_subfiles",
                    "add_moduledirs", "add_plugindirs", "add_packagedirs", "includes",
                    -- 目标构建
                    "target", "set_kind", "add_files", "add_headerfiles", "set_configdir", "add_deps",
                    -- 编译配置
                    "add_defines", "add_undefines", "add_includedirs", "add_links", "add_linkdirs",
                    "add_syslinks", "add_ldflags", "add_arflags", "add_shflags", "add_cflags",
                    "add_cxflags", "add_cxxflags", "add_mflags", "add_mxflags", "set_symbols",
                    "set_optimize", "set_strip", "set_languages", "set_warnings", "add_frameworks",
                    "add_frameworkdirs", "add_vectorexts", "add_cfuncs", "add_cxxfuncs",
                    -- 包管理
                    "add_requires", "add_packages", "add_repositories", "has_package",
                    -- 条件判断
                    "is_os", "is_arch", "is_plat", "is_host", "is_mode", "is_kind",
                    "is_option", "is_config", "has_config",
                    -- 自定义脚本与任务
                    "task", "set_menu", "on_load", "on_config", "on_build", "on_clean",
                    "on_package", "on_install", "on_uninstall", "on_run", "before_build",
                    "after_build", "before_clean", "after_clean", "before_run", "after_run",
                    "before_package", "after_package", "before_install", "after_install",
                    -- 内置模块和脚本函数
                    "import", "inherit", "val", "ifelse", "try", "catch", "finally",
                    "pairs", "ipairs", "print", "printf", "cprint", "cprintf", "format",
                    "vformat", "raise", "os", "io", "path", "table", "string", "process"
                },
            },
            workspace = {
                -- 防止LSP因找不到xmake模块而报错
                checkThirdParty = false
            },
        },
    }
}
