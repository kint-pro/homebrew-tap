class KintVault < Formula
  desc "Secrets management CLI — encrypt .env files directly in your repo"
  homepage "https://github.com/kint-pro/kint-vault-cli"
  version "0.1.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kint-pro/kint-vault-cli/releases/download/v0.1.5/kint-vault-cli_0.1.5_darwin_arm64.tar.gz"
      sha256 "58f22277f6e74880822b3658b581fda36955b0e60f44bcf780fc2d87a2ef4c55"
    end
    on_intel do
      url "https://github.com/kint-pro/kint-vault-cli/releases/download/v0.1.5/kint-vault-cli_0.1.5_darwin_amd64.tar.gz"
      sha256 "8bc7dff00c01671c17e46afb17c5ace460a7e782428b017a8e28bd56b78161e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kint-pro/kint-vault-cli/releases/download/v0.1.5/kint-vault-cli_0.1.5_linux_arm64.tar.gz"
      sha256 "9f3ceb80f9961b1813a4c3661b5c74975689e4ea748b1d59dd5bfb6651c433ea"
    end
    on_intel do
      url "https://github.com/kint-pro/kint-vault-cli/releases/download/v0.1.5/kint-vault-cli_0.1.5_linux_amd64.tar.gz"
      sha256 "6490c41290f3b84264fac54b316763994e82c4d6b970fa2661a515d9d4dfe956"
    end
  end

  def install
    bin.install "kint-vault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kint-vault --version", 0)
  end
end
