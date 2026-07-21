class EnvWizard < Formula
  desc "Interactive .env filler with repo-aware AI hints (cloud or local)"
  homepage "https://github.com/alphonse-terrier/env-wizard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alphonse-terrier/env-wizard/releases/download/v0.3.1/env-wizard-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "1d8c8ca5a9ba38f4cb3f28e537d5d9a6e1c84d68438595b81ad3b4075e75cf58"
    end
    on_intel do
      url "https://github.com/alphonse-terrier/env-wizard/releases/download/v0.3.1/env-wizard-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "94605758db6bb24cd0f56aba5ee12a5122c2b1d0bf0338f6990da7790db54d22"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alphonse-terrier/env-wizard/releases/download/v0.3.1/env-wizard-v0.3.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "185cd7b1eaf96b7f47aa16912a0464db67c3e0e8f78cb4936fe34ee9365630a0"
    end
  end

  def install
    bin.install "env-wizard"
  end

  test do
    assert_match "env-wizard #{version}", shell_output("#{bin}/env-wizard --version")
  end
end
