class Aci < Formula
  desc "Interactive Arduino-CLI for beginners transitioning from Arduino IDE"
  homepage "https://github.com/Vaishnav-Sabari-Girish/arduino-cli-interactive"
  url "https://github.com/Vaishnav-Sabari-Girish/arduino-cli-interactive/releases/download/v1.0.3/aci_v1.0.3.tar.gz"
  sha256 "715a84f1ad09fffc5346656d8db5a424ae5ba12b5bab72483c5a3abacdc6f7b1"
  license "Apache-2.0"

  def install
    bin.install "main.sh" => "aci"
  end

  test do
    # Test will fail without actual expected output
    system "#{bin}/aci", "--help"
  end
end
