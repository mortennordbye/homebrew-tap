cask "headroom-finance" do
  arch arm: "arm64", intel: "x64"

  version "3.19.0"
  sha256 arm:   "41e34bafddec3dc99abbd8944afb304f9baeb4dbc6baea481c2c06da45631fae",
         intel: "8996993d8e61ad7b322a975b207e7f67f4492d774aaba5612229e62f1c89db69"

  url "https://github.com/mortennordbye/headroom/releases/download/v#{version}/Headroom-#{version}-#{arch}.dmg"
  name "Headroom"
  desc "Personal finance app for budgets, assets, investments and loans"
  homepage "https://github.com/mortennordbye/headroom"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Headroom.app"

  caveats <<~EOS
    Headroom is not signed by Apple, so macOS blocks it when you open it. This can happen again after an upgrade.
    Open it once, then go to System Settings > Privacy & Security and click Open Anyway.
  EOS
end
