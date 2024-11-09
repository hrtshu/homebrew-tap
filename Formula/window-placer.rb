
class WindowPlacer < Formula
  desc "A tool to manage window placement"
  version "0.3.1"
  homepage "https://github.com/hrtshu/WindowPlacer"

  on_arm do
    url "https://github.com/hrtshu/WindowPlacer/releases/download/v#{version}/WindowPlacer"
    sha256 "5bee312b40708dbb1ae8666ff433728b634f6b22e4581e077bdcdae976f411df"
  end

  def install
    bin.install "WindowPlacer"
  end

  service do
    run [opt_bin/"WindowPlacer"]
    keep_alive true
    run_at_load true
  end
end
