do

function run(msg, matches)
  return 'Telegram Bot '.. VERSION .. [[ 
  StickerMaker V.1 Based On Superflux
  Developer : Shahab
  Special thanks to Mustafaflux
  GNU GPL v2 license.]]
end

return {
  description = "Shows bot version", 
  usage = "$version: Shows bot version",
  patterns = {
    "$version$"
  }, 
  run = run 
}

end5
