class Aci < Formula
  desc "Interactive Arduino-CLI for beginners transitioning from Arduino IDE"
  homepage "https://github.com/Vaishnav-Sabari-Girish/arduino-cli-interactive"
  url "https://github.com/Vaishnav-Sabari-Girish/arduino-cli-interactive/releases/download/v1.0.6/aci_v1.0.6.tar.gz"
  sha256 "036f9c7e79bb8d7f1ac80d917c51efc96a5f220405971633b62d78a99cb43e44"
  license "Apache-2.0"


  def install
    bin.install "main.sh" => "aci"
  end

  test do
    # Test will fail without actual expected output
    system "#{bin}/aci", "--help"
  end
end
