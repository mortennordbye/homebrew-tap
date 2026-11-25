cask "headroom-finance" do
  arch arm: "arm64", intel: "x64"

  version "3.23.0"
  sha256 arm:   "31e9665f68e85440e39c50406d809c9747b252a3e596d837b3d0dfecaf4d74d0",
         intel: "0720142752c34bf708db227dbfd6a2f8310b8ebe1f60c161941a4386c6ddb8f3"

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
