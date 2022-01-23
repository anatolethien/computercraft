m = peripheral.find("monitor")
m.setTextScale(2)

function getTemperature()
	return math.random(-17, 3)
end

function displayStatus()
	m.clear()
	m.setCursorPos(3, 2)
	m.write(textutils.formatTime(os.time(), true))
	m.setCursorPos(3, 4)
	m.write(getTemperature())
end

displayStatus()
