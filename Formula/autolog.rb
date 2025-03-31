class Autolog < Formula
  desc "Git-based CLI tool for timesheet generation"
  homepage "https://github.com/daveymoores/autolog"
  url "https://github.com/daveymoores/autolog/releases/download/v0.3.72/autolog-mac.tar.gz"
  sha256 "a32c07762bcc55c9d8b2dc3314a4423e603492d9daeb9dd1010c46068473cecb"
  license "MIT"

  def install
    bin.install "autolog" # Directly install the binary
    (var/"autolog").mkpath
  end

  test do
    assert_match "autolog version", shell_output("#{bin}/autolog --version")
  end
end
