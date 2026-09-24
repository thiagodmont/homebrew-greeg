class Greeg < Formula
  desc "A grep for coding agents: indexed, syntax-aware, budgeted"
  homepage "https://github.com/thiagodmont/greeg"
  version "0.7.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/thiagodmont/greeg/releases/download/v#{version}/greeg-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1cf6660d8be3978c6dc9a2a8e545d45548f5cf847bcd0ebb13ffea03e6cbb86a"
    end
    on_intel do
      url "https://github.com/thiagodmont/greeg/releases/download/v#{version}/greeg-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "a57b93fae7e4a2108826981469771957e95de32e6e913dd447210f301fc886af"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/thiagodmont/greeg/releases/download/v#{version}/greeg-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c502a6d7ae1ea1fbc2217b11c8cd836a68a4d9b4afc7c756f06be412569b4a7e"
    end
    on_intel do
      url "https://github.com/thiagodmont/greeg/releases/download/v#{version}/greeg-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5c258e6ca870cfc0a52ec5b9d3476d12099a3eda578512853edc70cc96f7e452"
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
