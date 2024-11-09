
class WindowPlacer < Formula
  desc "A tool to manage window placement"
  version "0.3.0"
  homepage "https://github.com/hrtshu/WindowPlacer"

  on_arm do
    url "https://github.com/hrtshu/WindowPlacer/releases/download/v#{version}/WindowPlacer"
    sha256 "13b0e770bfdaad0b36f48c5b21090368ea67523f863f53fbf307b8a623643713"
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
