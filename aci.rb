class Aci < Formula
  desc "Interactive Arduino-CLI for beginners transitioning from Arduino IDE"
  homepage "https://github.com/Vaishnav-Sabari-Girish/arduino-cli-interactive"
  url "https://github.com/Vaishnav-Sabari-Girish/arduino-cli-interactive/releases/download/v1.2.0/aci_v1.2.0.tar.gz"
  sha256 "3c4e5b22ce5766a3e25259ca5ab85fe24e50a4aad0c6877731339fec949a0ad8"
  license "Apache-2.0"


  def install
    bin.install "bash_shell_script/main.sh" => "aci"
  end

  test do
    # Test will fail without actual expected output
    system "#{bin}/aci", "--help"
  end
end
