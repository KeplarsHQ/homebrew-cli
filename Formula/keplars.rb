class Keplars < Formula
  desc "Official CLI for the Keplars transactional email API"
  homepage "https://github.com/KeplarsHQ/cli"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/KeplarsHQ/cli/releases/download/v#{version}/keplars-darwin-arm64"
      sha256 "8aa469477a21cbad59a564df02f0813350e566501d7424382fd70d99feb0c75e"
    end
    on_intel do
      url "https://github.com/KeplarsHQ/cli/releases/download/v#{version}/keplars-darwin-amd64"
      sha256 "f64aba504532c6391025379803247523080ac0fa0c68c8253c4e03b8862d5492"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KeplarsHQ/cli/releases/download/v#{version}/keplars-linux-arm64"
      sha256 "68c30bfa1ec5d2d665f0586ecc55fac19e17aea81581a6aa0f4f68a1987bc45b"
    end
    on_intel do
      url "https://github.com/KeplarsHQ/cli/releases/download/v#{version}/keplars-linux-amd64"
      sha256 "e9b19f02fb2e0c64b75f76d14408cf6a61e575b5c9876a1824a71a879f51ab9a"
    end
  end

  def install
    binary = Dir["keplars-*"].first || "keplars"
    bin.install binary => "keplars"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/keplars --version")
  end
end
