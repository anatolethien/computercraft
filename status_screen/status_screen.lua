m = peripheral.find("monitor")
m.setTextScale(2)

function getTemperature()
	local t = -10
	local r = math.random(0, 60)
	if (r == 0 and t >= -19)
	then
		t = t - 1
	end
	if (r == 60 and t <= 5)
	then
		t = t + 1
	end
	return string.format("%.0f°C", t)
end

function displayStatus()
	m.clear()
	m.setCursorPos(3, 2)
	m.write(textutils.formatTime(os.time(), true))
	m.setCursorPos(3, 4)
	m.write(getTemperature())
end

while (true)
do
	displayStatus()
	os.sleep(0.5)
end
