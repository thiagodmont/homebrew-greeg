class Greeg < Formula
  desc "A grep for coding agents: indexed, syntax-aware, budgeted"
  homepage "https://github.com/thiagodmont/greeg"
  version "0.8.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/thiagodmont/greeg/releases/download/v#{version}/greeg-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c647e50b7d4a02824712247cf865f3dfefb0c24c4450f0298fec1045410210ca"
    end
    on_intel do
      url "https://github.com/thiagodmont/greeg/releases/download/v#{version}/greeg-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "90fdfee525ad6c204511d45d07f2452497976d851b387fb447d7321502c51f09"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/thiagodmont/greeg/releases/download/v#{version}/greeg-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9fd7f803ddc344fe1559e9c30ee5f84bb095f0c59044e86495dc206369558ca1"
    end
    on_intel do
      url "https://github.com/thiagodmont/greeg/releases/download/v#{version}/greeg-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f24db1009ee870556c95d28d305cce01660bc8bc1c49a5d8a57a6ff4c109922d"
    end
  end

  def install
    bin.install "greeg"
    man1.install "greeg.1" if File.exist?("greeg.1")
  end

  test do
    system "#{bin}/greeg", "--version"
  end
end
