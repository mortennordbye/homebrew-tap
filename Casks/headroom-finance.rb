cask "headroom-finance" do
  arch arm: "arm64", intel: "x64"

  version "3.24.0"
  sha256 arm:   "77de1c31b43f1ab6f092970faeb01c88d86c59f659f053d4f65f9c73d46fe4f9",
         intel: "aab65c7c46b048c7104f7bfb270cef71708612cc895be8052488db0e65cda28c"

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
