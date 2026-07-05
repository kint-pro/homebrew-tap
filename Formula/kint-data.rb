class KintData < Formula
  desc "Team data sharing via git-lfs and Kint OneDrive (Microsoft Graph transfer agent)"
  homepage "https://github.com/kint-pro/kint-data-cli"
  version "0.1.0"
  license :cannot_represent

  depends_on "git-lfs"

  on_macos do
    on_arm do
      url "https://github.com/kint-pro/kint-data-cli/releases/download/v0.1.0/kint-data-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "ed54ec41c3625ec930b60d7a3692bc46905afd98d3504fdb7daf427535cd1ab6"
    end
    on_intel do
      url "https://github.com/kint-pro/kint-data-cli/releases/download/v0.1.0/kint-data-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "6a353ffa5640055caec154311fbd5b8b2ba08f2e73509dbfb394ccb28697926f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kint-pro/kint-data-cli/releases/download/v0.1.0/kint-data-cli_0.1.0_linux_arm64.tar.gz"
      sha256 "e819f3d18ad6f2ac7cf757ab51e8b50b33d332de45f1a2441ace3b336e20f8e2"
    end
    on_intel do
      url "https://github.com/kint-pro/kint-data-cli/releases/download/v0.1.0/kint-data-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "146a743eb7fbe595fc79c1b7c22e0ff3506e25075a610d8e2503f670b2eaf8e1"
    end
  end

  def install
    bin.install "kint-data"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kint-data --version", 0)
  end
end
