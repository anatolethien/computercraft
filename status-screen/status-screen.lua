-- configure the monitor
monitor = peripheral.find("monitor")
monitor.setTextScale(2)

-- create a fake temperature between -19°C and 5°C
function getTemperature ()
	local temperature = -10
	local random = math.random(0, 60)
	if (random == 0 and temperature >= -19)
	then
		temperature = temperature - 1
	end
	if (random == 60 and temperature <= 5)
	then
		temperature = temperature + 1
	end
	return string.format("%.0f°C", temperature)
end

-- display data on monitor
function displayStatus ()
	monitor.clear()
	monitor.setCursorPos(3, 2)
	monitor.write(textutils.formatTime(os.time(), true))
	monitor.setCursorPos(3, 4)
	monitor.write(getTemperature())
end

-- refresh monitor display
while (true)
do
	displayStatus()
	os.sleep(0.5)
end
