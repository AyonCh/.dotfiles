if pcall(require, "leap") then
	require("leap").add_default_mappings()
else
	print("Leap not installed!")
	return
end
