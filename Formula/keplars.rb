class Keplars < Formula
  desc "Official CLI for the Keplars transactional email API"
  homepage "https://github.com/KeplarsHQ/cli"
  version "1.11.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/KeplarsHQ/cli/releases/download/v#{version}/keplars-darwin-arm64"
      sha256 "eaef873cb72b080951cddf59e4c4a92d1fbe52c12fcb8b4208f4d85baa3a2dd1"
    end
    on_intel do
      url "https://github.com/KeplarsHQ/cli/releases/download/v#{version}/keplars-darwin-amd64"
      sha256 "8a741ba3ba8abaf73a2198bf5642663315159e898b48f3ca491b34c8fcb54164"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KeplarsHQ/cli/releases/download/v#{version}/keplars-linux-arm64"
      sha256 "045c5b402421b3c668575bfa5d489b12381c789180246f70090fcfb64d08eae4"
    end
    on_intel do
      url "https://github.com/KeplarsHQ/cli/releases/download/v#{version}/keplars-linux-amd64"
      sha256 "ae0ee2344b14a87192a29fce1a83cc98976f77b31409fc3bcc4a2e70b3916874"
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
