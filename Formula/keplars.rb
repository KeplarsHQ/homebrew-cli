class Keplars < Formula
  desc "Official CLI for the Keplars transactional email API"
  homepage "https://github.com/KeplarsHQ/cli"
  version "1.11.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/KeplarsHQ/cli/releases/download/v#{version}/keplars-darwin-arm64"
      sha256 "099b16cec347c3b7891b90d6e65296090853a793aa00a4666f968b3c0bf42c35"
    end
    on_intel do
      url "https://github.com/KeplarsHQ/cli/releases/download/v#{version}/keplars-darwin-amd64"
      sha256 "b12a0a8f5d8cdf9c685ce3bd4d3194aacdedcfe34acd1f42a0adcc993fd54f30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KeplarsHQ/cli/releases/download/v#{version}/keplars-linux-arm64"
      sha256 "910be4aed623020d55ff24059368c595d70b86af4f5149e59c384ae5664cadec"
    end
    on_intel do
      url "https://github.com/KeplarsHQ/cli/releases/download/v#{version}/keplars-linux-amd64"
      sha256 "da83ec5e4299f3ebbea2687f9ba4cc77c6c9ac100773c1789efa1559b20c6e93"
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
