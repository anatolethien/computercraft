function displayTime(m)
	m.clear()
	m.setCursorPos(2, 1)
	m.write(textutils.formatTime(os.time(), true))
end

m = peripheral.find("monitor")
displayTime(m)
