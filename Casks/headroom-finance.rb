cask "headroom-finance" do
  arch arm: "arm64", intel: "x64"

  version "3.19.2"
  sha256 arm:   "6e4f8d4483df0114d790ae57b34a46399eaf48cd29dbf302fc68eab7f77c516f",
         intel: "ed634789de19b36bf7e05824857168984998db8e6f3c34228d6aaad7a6d5d0a0"

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
