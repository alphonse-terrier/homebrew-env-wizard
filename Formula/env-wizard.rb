class EnvWizard < Formula
  desc "Interactive .env filler with repo-aware AI hints (cloud or local)"
  homepage "https://github.com/alphonse-terrier/env-wizard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alphonse-terrier/env-wizard/releases/download/v0.4.0/env-wizard-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "f88452f8db3eeb65f0bda479ee3f52bb5374d46e5aceccd6567a9e4692c3fd2f"
    end
    on_intel do
      url "https://github.com/alphonse-terrier/env-wizard/releases/download/v0.4.0/env-wizard-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "41d5ea6e579ce7de6ae92f640f5644ddc16876ab335c296e1f495152b3de390e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alphonse-terrier/env-wizard/releases/download/v0.4.0/env-wizard-v0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e0b2aa2dfe504cb41a1acea5fbc342d65baeeec081d89acfe163b226922fab4f"
    end
  end

  def install
    bin.install "env-wizard"
  end

  test do
    assert_match "env-wizard #{version}", shell_output("#{bin}/env-wizard --version")
  end
end
