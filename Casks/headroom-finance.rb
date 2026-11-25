cask "headroom-finance" do
  arch arm: "arm64", intel: "x64"

  version "3.19.3"
  sha256 arm:   "851c9f8a36320e2fb6bc294dcede8c765f6d5caa199ec30d5ca89d300aeccfe8",
         intel: "f192b38600f5280d10fcd645b4c2c5ec1194d00de287db2434a3751d1b968886"

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
