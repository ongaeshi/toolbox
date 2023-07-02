SRC2URL = [
  {src: "C:/Users/ongaeshi/Code/runa_app/toolbox", url: "https://github.com/ongaeshi/toolbox"},
  {src: "C:/Users/ongaeshi/Code/runa", url: "https://github.com/ongaeshi/runa"},
]

require "clipboard"
require "launchy"

input = Clipboard.paste.encode("UTF-8")
input = input.tr("\\", "/")

SRC2URL.each do |d|
  src = d[:src]
  url = d[:url]

  if input.match?(src + "/")
    relative_path = input.gsub(src + "/", "")
    Launchy.open("#{url}/blob/master/#{relative_path}")
  end
end
