cask "focus-sidebar" do
  name "FocusSidebar"
  version "0.4.1"

  arch arm: "arm64-mac", intel: "mac"

  url "https://github.com/hrtshu/FocusSidebarReleases/releases/download/v#{version}/FocusSidebar-#{version}-#{arch}.zip"
  desc "FocusSidebar"
  homepage "https://github.com/hrtshu/FocusSidebar"

  sha256 :no_check

  app "FocusSidebar.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{appdir}/FocusSidebar.app"],
                   sudo: false
  end
end
