local lock = 1
local text = "\n\nSticker Maker By @Shahabambesik" -- Lotfan Ino Pak Nakonid Bara In Plugin Zahmat Ziadi Keshidam
local function callback(extra, success, result) -- Calback Bara Load Kardn ax
  if success then
    local file = 'sticker/sticker.webp'
    print('File downloaded to:', result)
     os.rename(result, file)
     print('File moved to:', file)
     
  else
    print('Error downloading: '..extra)
  end
end
--khob berim function run ro benvisim 
local function run(msg, matches)
local file = 'sticker/sticker.webp'

if msg.to.type == 'user' then

if matches[1]== "- stick" then
    if is_sudo(msg) then
lock = 1
return "Sticker Maker Locked ! \nNow Only [Sudo,Admin,Owner]'s can Be Use it"
else
return "Only For Sudo !"
end
end

if matches[1]== "+ stick" then
    if is_sudo(msg) then
lock = 0
return "Sticker Maker Unlocked ! \nNow All Members can Be Use it"
else

return "Only For Sudo !"
end
end
--------------------------------
if matches[1] == "sticker" then
    if lock == 0 then
    send_document(get_receiver(msg), "./"..file, ok_cb, false)
    return 'Please Wait '..txt
else
    if is_momod(msg) then 
        send_document(get_receiver(msg), "./"..file, ok_cb, false)
    return 'Please Wait '..txt
   end
   if not is_momod(msg) then
    return "Sticker Maker Is Locked For Members !"..txt
    end
end
end
if matches[1] == "Sticker" then
    if lock == 0 then
    send_document(get_receiver(msg), "./"..file, ok_cb, false)
    return 'Please Wait '..txt
else
    if is_momod(msg) then 
        send_document(get_receiver(msg), "./"..file, ok_cb, false)
    return 'Please Wait '..txt
   end
   if not is_momod(msg) then
    return "Sticker Maker Is Locked For Members !"..txt
    end
end
end

if matches[1] == "show sticker" or matches[1] == "Show sticker" then
if lock == 1 then
    return 'Sticker Maker : Lock'
else
return 'Sticker Maker : Unlock'    
end

end
if msg.media then
    if msg.media.type == 'photo' then
        
      load_photo(msg.id, callback, msg.id)
      if lock == 0 then
             return 'Photo Saved ! \nFor Get This Photo Sticker Type Sticker And Send To Me'..txt
    else
        return ''
    end
    
end

	 
end
else
return 'Sticker Make Only Work In My private !'..text
end

   end

return {
  patterns = {
  "^[Ss]ticker$",
  "^[Ss]how sticker$",
  "^- stick$",
  "^+ stick$",
  '%[(photo)%]'
  },
  run = run
}
