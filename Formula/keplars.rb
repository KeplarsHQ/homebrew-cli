class Keplars < Formula
  desc "Official CLI for the Keplars transactional email API"
  homepage "https://github.com/KeplarsHQ/cli"
  version "2.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/KeplarsHQ/cli/releases/download/v#{version}/keplars-darwin-arm64"
      sha256 "cf38dfe71b13a4f44d19706eda997276bb27653856bf0c54dca6197b89b2b314"
    end
    on_intel do
      url "https://github.com/KeplarsHQ/cli/releases/download/v#{version}/keplars-darwin-amd64"
      sha256 "a98e28fed94a48b10dc6ccb7ff6f0736a0ad2a6afc0267f249aab17a50f05615"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KeplarsHQ/cli/releases/download/v#{version}/keplars-linux-arm64"
      sha256 "12a3d5180a29bfcebecb820482bbe8fb85181360cf621c56ef0bb9ee3f576f3c"
    end
    on_intel do
      url "https://github.com/KeplarsHQ/cli/releases/download/v#{version}/keplars-linux-amd64"
      sha256 "8809196d8b771f7fe396ed632f343b6501d6114929dbd2e32e29bd10c4fe5be8"
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
