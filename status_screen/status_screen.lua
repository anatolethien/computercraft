m = peripheral.find("monitor")

function displayTime()
	m.clear()
	m.setCursorPos(8, 2)
	m.write(textutils.formatTime(os.time(), true))
end

displayTime()
