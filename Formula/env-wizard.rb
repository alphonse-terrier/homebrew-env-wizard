class EnvWizard < Formula
  desc "Interactive .env filler with repo-aware AI hints (cloud or local)"
  homepage "https://github.com/alphonse-terrier/env-wizard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alphonse-terrier/env-wizard/releases/download/v0.5.0/env-wizard-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "0938579b6fd4dc1ad728f07a3c1d95b914d472ddcca173b2c8c582fbb8ade332"
    end
    on_intel do
      url "https://github.com/alphonse-terrier/env-wizard/releases/download/v0.5.0/env-wizard-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "3d75bf1438274aeccc86f428854efc38b8b2a92b84de1ebccb77c19ef4b85dfc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alphonse-terrier/env-wizard/releases/download/v0.5.0/env-wizard-v0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a6a4be8c4aec4ba511fd1a1a09af581b05cc757b50730d3a64f813d73e5a1e5b"
    end
  end

  def install
    bin.install "env-wizard"
  end

  test do
    assert_match "env-wizard #{version}", shell_output("#{bin}/env-wizard --version")
  end
end
