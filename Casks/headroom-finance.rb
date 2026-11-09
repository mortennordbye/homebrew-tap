cask "headroom-finance" do
  arch arm: "arm64", intel: "x64"

  version "3.19.1"
  sha256 arm:   "dd1d535f26ba06ca8e6809f281a0f4d2f4c35ba9ffc3e75d1acc07f532ce930e",
         intel: "dbdc62912442536c3a75b014bb2a3fa50ae4e598caeee766cd1e2a1b3c77f855"

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
