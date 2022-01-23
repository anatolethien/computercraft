-- configure the disk drive
direction = "right"

-- display the menu
function displayMenu ()
	print("Jukebox")
	print()
	print("1 - Play")
	print("2 - Stop")
	print("3 - Quit")
end

-- play music
function play ()
	disk.playAudio(direction)
end

-- stop music
function stop ()
	disk.stopAudio(direction)
end

-- quit program
function quit()
	running = false
end

running = true
while (running)
do
	displayMenu()
	event, key = os.pullEvent("key")
	if (key == 2)
	then
		play()
	elseif (key == 3)
	then
		stop()
	elseif (key == 4)
	then
		quit()
	end
end
