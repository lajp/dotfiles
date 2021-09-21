local utils = require "mp.utils"
local msg = require "mp.msg"

function toggle_mono_stereo()
	local current = mp.get_property_native("audio-channels")
	if(current == "auto-safe") then
		mp.osd_message(mp.get_property_native("audio-channels"))
		mp.commandv("set","audio-channels", "mono")
		mp.osd_message("audio-channels: mono")
	elseif(current == "mono") then
		mp.commandv("set","audio-channels", "stereo")
		mp.osd_message("audio-channels: stereo")
	else
		mp.commandv("set","audio-channels", "auto-safe")
		mp.osd_message("audio-channels: auto-safe")
	end
end

mp.register_script_message("toggle-mono-stereo", toggle_mono_stereo)
--mp.add_key_binding("Alt+m", "toggle-mono-stereo", toggle_mono_stereo)
