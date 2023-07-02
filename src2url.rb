SRC2URL = [
  {src: "C:/Users/ongaeshi/Code/runa_app/toolbox", url: "https://github.com/ongaeshi/toolbox/blob/master"},
  {src: "C:/Users/ongaeshi/Code/runa", url: "https://github.com/ongaeshi/runa/blob/master"},
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
    Launchy.open("#{url}/#{relative_path}")
  end

  # https://github.com/ongaeshi/toolbox/blob/master/search.rb
  # explorer /select,C:\Users\ongaeshi\Code\runa_app\toolbox\search.rb
end
