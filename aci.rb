class Aci < Formula
  desc "Interactive Arduino-CLI for beginners transitioning from Arduino IDE"
  homepage "https://github.com/Vaishnav-Sabari-Girish/arduino-cli-interactive"
  url "https://github.com/Vaishnav-Sabari-Girish/arduino-cli-interactive/releases/download/v1.0.6/aci_v1.0.6.tar.gz"
  sha256 "06e4fbfc317af59ac37f29d6a44532f7215189606e0257fb9c6e846aa0ed662f"
  license "Apache-2.0"

  def install
    bin.install "main.sh" => "aci"
  end

  test do
    # Test will fail without actual expected output
    system "#{bin}/aci", "--help"
  end
end
