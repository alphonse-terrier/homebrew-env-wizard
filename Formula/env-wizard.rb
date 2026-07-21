class EnvWizard < Formula
  desc "Interactive .env filler with repo-aware AI hints (cloud or local)"
  homepage "https://github.com/alphonse-terrier/env-wizard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alphonse-terrier/env-wizard/releases/download/v0.3.0/env-wizard-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "b3617cb06c2f00e51f5b7898fa999753101384205988064d1cde04e31fe64ced"
    end
    on_intel do
      url "https://github.com/alphonse-terrier/env-wizard/releases/download/v0.3.0/env-wizard-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "5aeb047143152db6310e50fae4a75b3b6cb40d659b6e0cf0a91d504bd00f1cca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alphonse-terrier/env-wizard/releases/download/v0.3.0/env-wizard-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b0f39cc8ebb30234a3a0276ae3091361669ba1b91d93f70873ef00131d568a37"
    end
  end

  def install
    bin.install "env-wizard"
  end

  test do
    assert_match "env-wizard #{version}", shell_output("#{bin}/env-wizard --version")
  end
end
