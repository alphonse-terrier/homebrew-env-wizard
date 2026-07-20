class EnvWizard < Formula
  desc "Interactive .env filler with repo-aware AI hints (cloud or local)"
  homepage "https://github.com/alphonse-terrier/env-wizard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alphonse-terrier/env-wizard/releases/download/v0.1.0/env-wizard-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "d4e5d3005d1dfa30342c008e4b4e2454f0131bf6d1b6f1ff07bfd4e504ff321a"
    end
    on_intel do
      url "https://github.com/alphonse-terrier/env-wizard/releases/download/v0.1.0/env-wizard-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "e28e918754353a298054b1db7a9fabb0d819f020753e9e258ed868363989eeff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alphonse-terrier/env-wizard/releases/download/v0.1.0/env-wizard-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4edfcc2c4de448efd0aec3b7cf74fa221ce11b34fa4e5aea9c8196d3e4d1079d"
    end
  end

  def install
    bin.install "env-wizard"
  end

  test do
    assert_match "env-wizard 0.1.0", shell_output("#{bin}/env-wizard --version")
  end
end
