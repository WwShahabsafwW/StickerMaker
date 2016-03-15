do

function run(msg, matches)
  return 'Telegram Bot '.. VERSION .. [[ 
  Sticker Maker Bot V.1 Based on plugins
  Developer : @Shahabambesik
  Founder : @Thisisbangi 
  Designer : @Can_3er 
  E M C Team™]]
end

return {
  description = "Shows bot version", 
  usage = "/version: Shows bot version",
  patterns = {
    "^/version$"
  }, 
  run = run 
}

end5
