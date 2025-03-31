class Autolog < Formula
  desc "Git-based CLI tool for timesheet generation"
  homepage "https://github.com/daveymoores/autolog"
  url "https://github.com/daveymoores/autolog/releases/download/v0.3.71/autolog-mac.tar.gz"
  sha256 "936aed30b3369dc4649ffebba6a0f872572fa6494ef96bdec85c72d82e7e82c1"
  license "MIT"

  def install
    bin.install "autolog" # Directly install the binary
    (var/"autolog").mkpath
  end

  test do
    assert_match "autolog version", shell_output("#{bin}/autolog --version")
  end
end
