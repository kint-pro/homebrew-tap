class KintVault < Formula
  desc "Secrets management CLI — encrypt .env files directly in your repo"
  homepage "https://github.com/kint-pro/kint-vault-cli"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kint-pro/kint-vault-cli/releases/download/v0.1.4/kint-vault-cli_0.1.4_darwin_arm64.tar.gz"
      sha256 "a3bbe34e7a8380f04245f1b1c373a11a7fcdc03b9c0c4bb900a05b91059488dc"
    end
    on_intel do
      url "https://github.com/kint-pro/kint-vault-cli/releases/download/v0.1.4/kint-vault-cli_0.1.4_darwin_amd64.tar.gz"
      sha256 "c77c4a1013c32f62f4f91793e4fc0a8a8d6d69b01ddc244ba1edcfa177b19e15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kint-pro/kint-vault-cli/releases/download/v0.1.4/kint-vault-cli_0.1.4_linux_arm64.tar.gz"
      sha256 "5f40ee7f3448229728f0f7188285be7c67d99f2e1f4579ff20ba90e5d6e85a93"
    end
    on_intel do
      url "https://github.com/kint-pro/kint-vault-cli/releases/download/v0.1.4/kint-vault-cli_0.1.4_linux_amd64.tar.gz"
      sha256 "d7a92cf35f37c0801fde2d14afd96c512f52eb068efb733f8e5634d542b20acb"
    end
  end

  def install
    bin.install "kint-vault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kint-vault --version", 0)
  end
end
