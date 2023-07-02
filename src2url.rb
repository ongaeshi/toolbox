SRC2URL = {
  "C:/Users/ongaeshi/Code/runa_app/toolbox" => "https://github.com/ongaeshi/toolbox",
  "C:/Users/ongaeshi/Code/runa" => "https://github.com/ongaeshi/runa",
}

require "clipboard"
require "launchy"

input = Clipboard.paste.encode("UTF-8")
input = input.tr("\\", "/")

SRC2URL.each do |src, url|
  if input.match?(src + "/")
    relative_path = input.gsub(src + "/", "")
    Launchy.open("#{url}/blob/master/#{relative_path}")
  end
end
