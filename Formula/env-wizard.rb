class EnvWizard < Formula
  desc "Interactive .env filler with repo-aware AI hints (cloud or local)"
  homepage "https://github.com/alphonse-terrier/env-wizard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alphonse-terrier/env-wizard/releases/download/v0.2.0/env-wizard-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "f04324da695e13c94955491d27100123dd39a33fe2c69605193442b6d8a478ee"
    end
    on_intel do
      url "https://github.com/alphonse-terrier/env-wizard/releases/download/v0.2.0/env-wizard-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "c79ae354021bde1c2678e94ed4f10b1d7d5698f9f20f989bcfc9c7272d423805"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alphonse-terrier/env-wizard/releases/download/v0.2.0/env-wizard-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "78b949047a1ac9af5d00fbbf765a01f95105b6fc60301a7325828f537179d042"
    end
  end

  def install
    bin.install "env-wizard"
  end

  test do
    assert_match "env-wizard #{version}", shell_output("#{bin}/env-wizard --version")
  end
end
