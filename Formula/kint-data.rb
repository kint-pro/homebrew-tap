class KintData < Formula
  desc "Team data sharing via git-lfs and Kint OneDrive (Microsoft Graph transfer agent)"
  homepage "https://github.com/kint-pro/kint-data-cli"
  version "0.1.0"
  license :cannot_represent

  depends_on "git-lfs"

  on_macos do
    on_arm do
      url "https://github.com/kint-pro/kint-data-cli/releases/download/v0.1.0/kint-data-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "f9eb3ea4e0e851d89a4673689e4c5b7829927a5bac8b3b0252d34aebb9c02f63"
    end
    on_intel do
      url "https://github.com/kint-pro/kint-data-cli/releases/download/v0.1.0/kint-data-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "dd352e61763b77524a3589a35aa47c011d9ab4138b6dac416195d51c236582c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kint-pro/kint-data-cli/releases/download/v0.1.0/kint-data-cli_0.1.0_linux_arm64.tar.gz"
      sha256 "3bda2ddc9a929c56aef003e095a87f653074d38859401d54577a1d0d895bf341"
    end
    on_intel do
      url "https://github.com/kint-pro/kint-data-cli/releases/download/v0.1.0/kint-data-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "824bbc2ac164f088826cf30c5909e72d5467c60afdc0e2c1acf8bd59a096dd8a"
    end
  end

  def install
    bin.install "kint-data"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kint-data --version", 0)
  end
end
