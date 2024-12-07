.PHONY: api_documentation llscheck luacheck stylua

api_documentation:
	nvim -u scripts/make_api_documentation/minimal_init.lua -l scripts/make_api_documentation/main.lua

llscheck:
	VIMRUNTIME=`nlua -e 'io.write(os.getenv("VIMRUNTIME"))'` llscheck --configpath .luarc.json .

luacheck:
	luacheck lua scripts

stylua:
	stylua lua scripts
