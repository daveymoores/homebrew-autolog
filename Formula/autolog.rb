class Autolog < Formula
  desc "Git-based CLI tool for timesheet generation"
  homepage "https://github.com/daveymoores/autolog"
  url "https://github.com/daveymoores/autolog/releases/download/v0.3.73/autolog-mac.tar.gz"
  sha256 "d65d2218366c472128988c895d9263ca1afd9d03fa92b79ed7669419a2796f43"
  license "MIT"

  def install
    bin.install "autolog" # Directly install the binary
    (var/"autolog").mkpath
  end

  test do
    assert_match "autolog version", shell_output("#{bin}/autolog --version")
  end
end
