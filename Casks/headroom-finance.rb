cask "headroom-finance" do
  arch arm: "arm64", intel: "x64"

  version "3.17.2"
  sha256 arm:   "cb88df8cf093d69a0fc8ccb27654f6c7d44f4f2244be7e5f971a3e844b89512c",
         intel: "127cfc5ed7f115e76e24d5505ed12e5f78e7eebbcafb883f846dc2e3121a2bd9"

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
end
