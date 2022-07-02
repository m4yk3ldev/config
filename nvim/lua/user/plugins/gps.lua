local present, gps = pcall(require, "nvim-gps")

if not present then
   return
end


local options = {
   depth = 5,


}

gps.setup(options)
