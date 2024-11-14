return 
{ 
    'Civitasv/cmake-tools.nvim' ,
    config = function()
        local osys = require("cmake-tools.osys")
        require("cmake-tools").setup({
            cmake_use_preset = true,
            cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" }, -- this will be passed when 
            cmake_build_directory = function()
                if osys.iswin32 then
                  return "build\\${variant:buildType}"
                end
                return "build/${variant:buildType}"
            end, -- this is used to specify generate directory for cmake, allows macro expansion, can be a string or a function returning the string, relative to cwd.
        })
    end
}