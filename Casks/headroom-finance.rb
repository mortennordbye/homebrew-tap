cask "headroom-finance" do
  arch arm: "arm64", intel: "x64"

  version "3.22.0"
  sha256 arm:   "e38d8dfd0f3b072e1252e414dcf7730683b0019ce28a1d11d6a6ef874c91a1fb",
         intel: "e8c9ac25dd37b3e47791bd5ae8883a751d7ac5e7a7894ad0dc4d8a1cde259c46"

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
