class EnvWizard < Formula
  desc "Interactive .env filler with repo-aware AI hints (cloud or local)"
  homepage "https://github.com/alphonse-terrier/env-wizard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alphonse-terrier/env-wizard/releases/download/v0.6.0/env-wizard-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "58851682f46bcda1d6d27ecadeb65322521809e597eac36e4b9d4c9b04b034be"
    end
    on_intel do
      url "https://github.com/alphonse-terrier/env-wizard/releases/download/v0.6.0/env-wizard-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "2f573e7c6e608d04acb70cd0d14ad82c8d3ed7c17c088a9b783bb725479bd0fb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alphonse-terrier/env-wizard/releases/download/v0.6.0/env-wizard-v0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5e0a3b09ce462cab2b73d345bf01340cc1f5d6df2de9d732c78e4d9396b7f5e0"
    end
  end

  def install
    bin.install "env-wizard"
  end

  test do
    assert_match "env-wizard #{version}", shell_output("#{bin}/env-wizard --version")
  end
end
