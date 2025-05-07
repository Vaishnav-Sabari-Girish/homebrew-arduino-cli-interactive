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
    # Verify the file exists before installing
    raise "Missing bash_shell_script/main.sh in tarball" unless File.exist?("bash_shell_script/main.sh")
    libexec.install "bash_shell_script/main.sh" => "aci.sh"
    libexec.install "bash_shell_script/examples"
    (bin/"aci").write <<~EOS
      #!/bin/bash
      cd "#{libexec}" && exec "#{libexec}/aci.sh" "$@"
    EOS
  end

  test do
    system "#{bin}/aci"
    assert_predicate libexec/"examples/01.Basics/Blink/Blink.ino", :exist?
  end
end
