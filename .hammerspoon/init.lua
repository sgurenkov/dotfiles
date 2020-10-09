local hypr = {"ctrl", "alt", "shift", "cmd"}

function openApp(appName)
  local app = hs.application.find(appName)
  if not app then
    hs.application.launchOrFocus(appName)
  else
    if app:isFrontmost() then
      app:hide()
    else
      app:activate()
    end
  end
end

hs.hotkey.bind(hypr, "t", function() openApp("iTerm") end)
hs.hotkey.bind(hypr, "e", function() openApp("Emacs") end)
hs.hotkey.bind(hypr, "i", function() openApp("webstorm") end)
hs.hotkey.bind(hypr, "c", function() openApp("chrome") end)
hs.hotkey.bind(hypr, "f", function() openApp("firefox") end)
hs.hotkey.bind(hypr, "z", function() openApp("Zoom") end)


-- HANDLE SCROLLING-- HANDLE SCROLLING-- HANDLE SCROLLING
local oldmousepos = {}
-- positive multiplier (== natural scrolling) makes mouse work like traditional scrollwheel
local scrollmult = 1 

-- The were all events logged, when using `{"all"}`
mousetap = hs.eventtap.new({0,3,5,14,25,26,27}, function(e)
	oldmousepos = hs.mouse.getAbsolutePosition()
	local mods = hs.eventtap.checkKeyboardModifiers()
    local pressedMouseButton = e:getProperty(hs.eventtap.event.properties['mouseEventButtonNumber'])

    local shouldScroll = 3 == pressedMouseButton

    if shouldScroll then
      local dx = e:getProperty(hs.eventtap.event.properties['mouseEventDeltaX'])
      local dy = e:getProperty(hs.eventtap.event.properties['mouseEventDeltaY'])
      local scroll = hs.eventtap.event.newScrollEvent({dx * scrollmult, dy * scrollmult},{},'pixel')
      scroll:post()
      
      -- put the mouse back
      hs.mouse.setAbsolutePosition(oldmousepos)
      print (dy) 
      return true, {scroll}
    else
      return false, {}
    end
end)
mousetap:start()
