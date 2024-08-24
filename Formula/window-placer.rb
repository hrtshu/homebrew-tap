
class WindowPlacer < Formula
  desc "A tool to manage window placement"
  homepage "https://github.com/hrtshu/WindowPlacer"
  url "https://github.com/hrtshu/WindowPlacer/releases/download/v0.2.0/WindowPlacer"
  sha256 "f7509d8c958cca9be0a5812a234e898b08a94b2ee209be74f1ea6aa28bef782b"
  version "0.2.0"

  def install
    bin.install "WindowPlacer"
  end

  service do
    run [opt_bin/"WindowPlacer"]
    keep_alive true
    run_at_load true
  end
end
