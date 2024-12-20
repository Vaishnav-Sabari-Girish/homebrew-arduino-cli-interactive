class Aci < Formula
  desc "Interactive Arduino-CLI for beginners transitioning from Arduino IDE"
  homepage "https://github.com/Vaishnav-Sabari-Girish/arduino-cli-interactive"
  url "https://github.com/Vaishnav-Sabari-Girish/arduino-cli-interactive/releases/download/v1.0.0/aci_v0.0.1.tar.gz"
  sha256 "cfdf1d84512285f5310b4260b56cc43c0e97f5288842eacdb35eb1edcbf13b82"
  license "Apache-2.0"

  def install
    bin.install "bash_shell_script/main.sh" => "aci"
  end

  test do
    # Test will fail without actual expected output
    system "#{bin}/aci", "--help"
  end
end
