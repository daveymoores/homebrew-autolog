class Autolog < Formula
  desc "Git-based CLI tool for timesheet generation"
  homepage "https://github.com/daveymoores/autolog"
  url "https://github.com/daveymoores/autolog/releases/download/v0.3.69/autolog-mac.tar.gz"
  sha256 "d4fb4e5379942acbb165384ee28aa69237d72ffe4aa16014a6ff7d8617149d4c"
  license "MIT"

  def install
    bin.install "autolog" # Directly install the binary
    (var/"autolog").mkpath
  end

  test do
    assert_match "autolog version", shell_output("#{bin}/autolog --version")
  end
end
