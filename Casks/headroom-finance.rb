cask "headroom-finance" do
  arch arm: "arm64", intel: "x64"

  version "3.18.0"
  sha256 arm:   "90844efb2a18a4199f2fd2fc10d21f225d439ad82d23b8c0549b8d06c23b7a63",
         intel: "25162b69e8acb594c29815576620a5d8ff5dfce544f26118029f465ed177e247"

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
