class Aci < Formula
  desc "Interactive Arduino-CLI for beginners transitioning from Arduino IDE"
  homepage "https://github.com/Vaishnav-Sabari-Girish/arduino-cli-interactive"
  url "https://github.com/Vaishnav-Sabari-Girish/arduino-cli-interactive/releases/download/v1.0.9/aci_v1.0.9.tar.gz"
  sha256 "f607b9c6282ba7f1a863f0ef07114e169e84d9a5412d1793750e08cb23a6663d"
  license "Apache-2.0"


  def install
    bin.install "main.sh" => "aci"
  end

  test do
    # Test will fail without actual expected output
    system "#{bin}/aci", "--help"
  end
end
