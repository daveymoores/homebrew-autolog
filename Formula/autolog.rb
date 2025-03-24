class Autolog < Formula
  desc "Git-based CLI tool for timesheet generation"
  homepage "https://github.com/daveymoores/autolog"
  url "https://github.com/daveymoores/autolog/releases/download/v0.3.70/autolog-mac.tar.gz"
  sha256 "a7dbc29b664de572daf8e871bc3100f7940860b2d39cb8a710694f61b6aa9652"
  license "MIT"

  def install
    bin.install "autolog" # Directly install the binary
    (var/"autolog").mkpath
  end

  test do
    assert_match "autolog version", shell_output("#{bin}/autolog --version")
  end
end
