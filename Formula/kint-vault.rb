class KintVault < Formula
  desc "Secrets management CLI — encrypt .env files directly in your repo"
  homepage "https://github.com/kint-pro/kint-vault-cli"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kint-pro/kint-vault-cli/releases/download/v0.1.3/kint-vault-cli_0.1.3_darwin_arm64.tar.gz"
      sha256 "e2d2066a627832d24cbfe549a75658788a2498b347f67d9dd3797854cbf96be3"
    end
    on_intel do
      url "https://github.com/kint-pro/kint-vault-cli/releases/download/v0.1.3/kint-vault-cli_0.1.3_darwin_amd64.tar.gz"
      sha256 "6333fb5fb7cc837186be1c0153ea34ca1f29a07646b9d3cdfaeac4b9e37c8377"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kint-pro/kint-vault-cli/releases/download/v0.1.3/kint-vault-cli_0.1.3_linux_arm64.tar.gz"
      sha256 "b78acef1302aafffee279acd02d3101feacfc6b8b65bb7f75a393fb1222befa2"
    end
    on_intel do
      url "https://github.com/kint-pro/kint-vault-cli/releases/download/v0.1.3/kint-vault-cli_0.1.3_linux_amd64.tar.gz"
      sha256 "9031bbc4ee9c9a892f9b15a661720e84775f52e3cd32cf9bb68ab9fc55975ae1"
    end
  end

  def install
    bin.install "kint-vault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kint-vault --version", 0)
  end
end
