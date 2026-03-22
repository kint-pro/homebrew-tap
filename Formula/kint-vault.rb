class KintVault < Formula
  desc "Secrets management CLI — encrypt .env files directly in your repo"
  homepage "https://github.com/kint-pro/kint-vault-cli"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kint-pro/kint-vault-cli/releases/download/v0.1.0/kint-vault-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "dd4e211042f7b2930eab30dcc9863949872734047326fbe8fad0eb4476a7c96e"
    end
    on_intel do
      url "https://github.com/kint-pro/kint-vault-cli/releases/download/v0.1.0/kint-vault-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "65c5f4f64903086d4d9997f6b09427a45908ed6384f41d17dc3756dbb88e67a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kint-pro/kint-vault-cli/releases/download/v0.1.0/kint-vault-cli_0.1.0_linux_arm64.tar.gz"
      sha256 "de9ad601d4bbdadbd7e2c42e17d6578e2baf87a4ddf14d53a69ac9751f385ddf"
    end
    on_intel do
      url "https://github.com/kint-pro/kint-vault-cli/releases/download/v0.1.0/kint-vault-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "3883c47fac7c5764b9387ea9d5ed047d34094d999e761a03ff2d215e0a858eba"
    end
  end

  def install
    bin.install "kint-vault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kint-vault --version", 0)
  end
end
