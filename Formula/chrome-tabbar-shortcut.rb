
class ChromeTabbarShortcut < Formula
  desc "A keyboard shortcut to toggle Chrome vertical tab bar"
  version "0.1.1"
  homepage "https://github.com/hrtshu/ChromeTabbarShortcut"

  on_arm do
    url "https://github.com/hrtshu/ChromeTabbarShortcut/releases/download/v#{version}/ChromeTabbarShortcut"
    sha256 "e59a96fd90a021694301bfa8959c985a4aaad4a43a9941517c4aedd73b6aa58a"
  end

  def install
    bin.install "ChromeTabbarShortcut"
  end

  service do
    run [opt_bin/"ChromeTabbarShortcut"]
    keep_alive true
    run_at_load true
  end
end
