cask "headroom-finance" do
  arch arm: "arm64", intel: "x64"

  version "3.18.1"
  sha256 arm:   "ab6adc6102663f0475e5282cdffa711688fd95269a314e22cacd54f3a8b260d7",
         intel: "7a0a9ef01510c309a05f9fb72e77b96560cf005642f8dd2c0b26a1c0c2116f67"

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
