class Aci < Formula
  desc "Interactive Arduino-CLI for beginners transitioning from Arduino IDE"
  homepage "https://github.com/Vaishnav-Sabari-Girish/arduino-cli-interactive"
  url "https://github.com/Vaishnav-Sabari-Girish/arduino-cli-interactive/releases/download/v1.2.0/aci_v1.2.0.tar.gz"
  sha256 "cac447677e239614b48d75803ee75ca01f4b37d1f7e74b71b0b096ae4e21e8a4"
  license "Apache-2.0"

  depends_on "gum"
  depends_on "arduino-cli"
  depends_on "caarlos0/tap/timer"

  def install
    # Install the main script and examples to libexec
    libexec.install "bash_shell_script/main.sh" => "aci.sh"
    libexec.install "bash_shell_script/examples"
    # Create a wrapper script to set the working directory
    (bin/"aci").write <<~EOS
      #!/bin/bash
      cd "#{libexec}" && exec "#{libexec}/aci.sh" "$@"
    EOS
  end

  test do
    # Test the binary
    system "#{bin}/aci", "--help"
    # Test that examples directory was installed
    assert_predicate libexec/"examples/01.Basics/Blink/Blink.ino", :exist?
  end
end
