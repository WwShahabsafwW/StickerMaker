local function run(msg, matches)
  if is_user_msg(msg) then
    local text = [[‌✅ How To Use ✅

Send me photo first !
Then send by pm "Sticker"
I will give you your sticker

Developer : @Shahabambesik
E M C Team™

➖🔸➖🔹➖🔸➖🔹➖]]
    return text
  end
  --if is_channel_msg(msg) then
    --local text = [[‌‌]]
    return text
  else
    local text = [[aaa]]
    --return text
  end
end

return {
  description = "Help plugin. Get info from other plugins.  ", 
  usage = {
    "!help: Show list of plugins.",
  },
  patterns = {
    "^/(help)$",
  }, 
  run = run,
}
