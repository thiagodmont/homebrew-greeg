class Greeg < Formula
  desc "A grep for coding agents: indexed, syntax-aware, budgeted"
  homepage "https://github.com/thiagodmont/greeg"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thiagodmont/greeg/releases/download/v#{version}/greeg-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "cc34902fa393e70539bef98165e3022cab31924af75ea344feea5a6e39153da8"
    end
    on_intel do
      url "https://github.com/thiagodmont/greeg/releases/download/v#{version}/greeg-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "91a8f381bcd33a0d4e32e44899843ccc16a846269bdc1b668d6c803273fc354d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/thiagodmont/greeg/releases/download/v#{version}/greeg-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "51e844b024bff3049596c88a46e8fba6f881523586fc896b1b4cf866ad2f9644"
    end
    on_intel do
      url "https://github.com/thiagodmont/greeg/releases/download/v#{version}/greeg-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b73b6cb6107af740272c7f44958e1454d07df03b65fd263a4bd726e4e16c6f9"
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
