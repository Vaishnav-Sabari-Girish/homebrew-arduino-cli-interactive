class Aci < Formula
  desc "Interactive Arduino-CLI for beginners transitioning from Arduino IDE"
  homepage "https://github.com/Vaishnav-Sabari-Girish/arduino-cli-interactive"
  url "https://github.com/Vaishnav-Sabari-Girish/arduino-cli-interactive/releases/download/v1.1.0/aci_v1.1.0.tar.gz"
  sha256 "3be8a85762a43351b880b4cb6155248788a77819179127c0bb9d1ba64057f597"
  license "Apache-2.0"


  def install
    bin.install "main.sh" => "aci"
  end

  test do
    # Test will fail without actual expected output
    system "#{bin}/aci", "--help"
  end
end
