cask "focus-sidebar" do
  name "FocusSidebar"
  version "0.2.0"

  arch arm: "arm64-mac", intel: "mac"

  url "https://github.com/hrtshu/FocusSidebarReleases/releases/download/v#{version}/FocusSidebar-0.2.0-#{arch}.zip"
  desc "FocusSidebar"
  homepage "https://github.com/hrtshu/FocusSidebar"

  sha256 arm: "ef9a36e5bca7689f089d572c7cab495b97dc9a61e6aec4eb6b6626ff107084fc",
         intel: "cc0231f914af57ec02e23759d84460d21e15362474dafeace4857090dd5d9925"

  app "FocusSidebar.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{appdir}/FocusSidebar.app"],
                   sudo: false
  end
end
