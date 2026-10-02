class Greeg < Formula
  desc "A grep for coding agents: indexed, syntax-aware, budgeted"
  homepage "https://github.com/thiagodmont/greeg"
  version "0.10.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/thiagodmont/greeg/releases/download/v#{version}/greeg-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "6e02e05b30c3f4ab9c46425a3167f139c5beb2955232f98daf48f893edf98a77"
    end
    on_intel do
      url "https://github.com/thiagodmont/greeg/releases/download/v#{version}/greeg-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "f1435bb10115b44648a86dc578308348e9970b7096631c3ee6f7d7f0ec9bcb5d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/thiagodmont/greeg/releases/download/v#{version}/greeg-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2e81ddb491e5880dd192555f6a31725753f657f5d52d9b606b025a14f5d37f5f"
    end
    on_intel do
      url "https://github.com/thiagodmont/greeg/releases/download/v#{version}/greeg-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2c6f45dae82a381d7f24b399fb124c6bfd0e74e7002053c3ac24ae81b7bc769c"
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
