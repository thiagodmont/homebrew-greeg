class Greeg < Formula
  desc "A grep for coding agents: indexed, syntax-aware, budgeted"
  homepage "https://github.com/thiagodmont/greeg"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thiagodmont/greeg/releases/download/v#{version}/greeg-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7f04a6943f4385cfb93ac697b42b70a34b476784b75eb5d9252ca7c7cfe0727e"
    end
    on_intel do
      url "https://github.com/thiagodmont/greeg/releases/download/v#{version}/greeg-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "6fa7a810c0a6c8cbc6a8c48d63ebfe010fc3ced2c1c19bec19db5fb94346a933"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/thiagodmont/greeg/releases/download/v#{version}/greeg-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a651d6db6970aa91a760b481ea1afaaf46074fe74674f51a9c7ffd11fd923bbf"
    end
    on_intel do
      url "https://github.com/thiagodmont/greeg/releases/download/v#{version}/greeg-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "97fb70a4031c3edb338d9d8d89081e950d534b3a8ded9bd2115d04053db876d5"
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
