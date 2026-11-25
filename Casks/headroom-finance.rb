cask "headroom-finance" do
  arch arm: "arm64", intel: "x64"

  version "3.20.0"
  sha256 arm:   "c46d82783eae36666f60596ebd2ea017b827cf90b0ea09ab74c491f95be26a51",
         intel: "31d49dafc3e54f20bb814340e8810cd06296bf24707e1f136efa63acf549d03c"

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
