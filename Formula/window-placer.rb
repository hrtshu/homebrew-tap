
class WindowPlacer < Formula
  desc "A tool to manage window placement"
  homepage "https://github.com/hrtshu/WindowPlacer"
  url "https://github.com/hrtshu/WindowPlacer/releases/download/v0.1.0/WindowPlacer"
  sha256 "e7b72ce480fe561cfd3fccda537aa206f5af126631d19db7e7a462f669f3ddd2"
  version "0.1.0"

  def install
    bin.install "WindowPlacer"
  end

  service do
    run [opt_bin/"WindowPlacer"]
    keep_alive true
    run_at_load true
  end
end
