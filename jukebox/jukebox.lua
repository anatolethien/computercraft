-- configure the speaker
speaker = peripheral.find("speaker")

running = true

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
	disk.playAudio("right")
end

-- stop music
function stop ()
	-- stop
end

-- quit program
function quit()
	running = false
end

while (running)
do
	event, key = os.pullEvent("key")
	if (key == 2)
	then
		play()
	elseif (key == 3)
	then
		pause()
	elseif (key == 4)
	then
		stop()
	end
