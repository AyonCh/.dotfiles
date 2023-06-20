if pcall(require, "gitsigns") then
	require("gitsigns").setup()
else
	print("Gitsigns not installed!")
	return
end
