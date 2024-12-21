class Aci < Formula
  desc "Interactive Arduino-CLI for beginners transitioning from Arduino IDE"
  homepage "https://github.com/Vaishnav-Sabari-Girish/arduino-cli-interactive"
  url "https://github.com/Vaishnav-Sabari-Girish/arduino-cli-interactive/releases/download/v1.0.1/aci_v1.0.1.tar.gz"
  sha256 "2f78e0dc1aa85675dc347a56c82f04c435319f3b2173c874e8c14b50e2494ab3"
  license "Apache-2.0"

  def install
    bin.install "bash_shell_script/main.sh" => "aci"
  end

  test do
    # Test will fail without actual expected output
    system "#{bin}/aci", "--help"
  end
end
