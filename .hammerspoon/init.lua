-- start: Karabiner profile switcher --
local usbWatcher = nil

function usbDeviceCallback(data)
	
    if (data["productName"] == "daskeyboard") then
        if (data["eventType"] == "added") then
        	hs.alert.show("daskeyboard added")
            hs.execute('/Applications/Karabiner.app/Contents/Library/bin/karabiner select 0')
        elseif (data["eventType"] == "removed") then
        	hs.alert.show("daskeyboard removed")
            hs.execute('/Applications/Karabiner.app/Contents/Library/bin/karabiner select 1')
        end
    end
end

usbWatcher = hs.usb.watcher.new(usbDeviceCallback)
usbWatcher:start()
-- end: Karabiner profile switcher --