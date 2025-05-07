class Aci < Formula
  desc "Interactive Arduino-CLI for beginners transitioning from Arduino IDE"
  homepage "https://github.com/Vaishnav-Sabari-Girish/arduino-cli-interactive"
  url "https://github.com/Vaishnav-Sabari-Girish/arduino-cli-interactive/releases/download/v1.2.0/aci_v1.2.0.tar.gz"
  sha256 "cafdb4ebc0dead764972c50e3e3d1a18536a29e70be504c668375586ca561fcc"
  license "Apache-2.0"

  depends_on "gum"
  depends_on "arduino-cli"
  depends_on "caarlos0/tap/timer"

  def install
    # Verify the file exists before installing
    raise "main.sh in tarball" unless File.exist?("main.sh")
    libexec.install "main.sh" => "aci"
    libexec.install "examples"
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
