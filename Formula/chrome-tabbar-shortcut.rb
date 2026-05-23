
class ChromeTabbarShortcut < Formula
  desc "A keyboard shortcut to toggle Chrome vertical tab bar"
  version "0.1.0"
  homepage "https://github.com/hrtshu/ChromeTabbarShortcut"

  on_arm do
    url "https://github.com/hrtshu/ChromeTabbarShortcut/releases/download/v#{version}/ChromeTabbarShortcut"
    sha256 "ba8cf480ed9c0bcaf403e2fd6e2fd4a1270dbed21b8e6646182a5db34dc38491"
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
