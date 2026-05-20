class Keplars < Formula
  desc "Official CLI for the Keplars transactional email API"
  homepage "https://github.com/KeplarsHQ/cli"
  version "2.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/KeplarsHQ/cli/releases/download/v#{version}/keplars-darwin-arm64"
      sha256 "d139e3239f12a69a84ac3d07adb283c23a4fcbea79b20b33bac1f76be3314958"
    end
    on_intel do
      url "https://github.com/KeplarsHQ/cli/releases/download/v#{version}/keplars-darwin-amd64"
      sha256 "9c648110125b42d017a21f65348e03373673bbc1d75972d9eab9069871302a43"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KeplarsHQ/cli/releases/download/v#{version}/keplars-linux-arm64"
      sha256 "56e762e0e23d6d5a5a0610db82c6b62d579e9eefcadfe2d228fa877022f9d081"
    end
    on_intel do
      url "https://github.com/KeplarsHQ/cli/releases/download/v#{version}/keplars-linux-amd64"
      sha256 "e71336c4681a51242afe25a576ad810682abf434eb13b400e30e33b61d5de8bd"
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
