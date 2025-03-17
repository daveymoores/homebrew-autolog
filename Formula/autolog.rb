class Autolog < Formula
  desc "CLI tool for automated logging"
  homepage "https://github.com/daveymoores/autolog"
  url "https://github.com/daveymoores/autolog/releases/download/v0.3.65/autolog-mac.tar.gz"
  sha256 "a3e8408fbc95c04e7bde98e9415b7b7b2f96eb7d6f60de04b0271ec5eb81f638"
  license "MIT"

  def install
    bin.install "autolog" # Directly install the binary
    (var/"autolog").mkpath
  end

  def post_uninstall
    db_dir = "#{ENV["HOME"]}/Library/Application Support/dev.autolog.cli"
    if Dir.exist?(db_dir)
      puts "Removing database directory at #{db_dir}"
      system "rm", "-rf", db_dir
    end
  end

  test do
    assert_match "autolog version", shell_output("#{bin}/autolog --version")
  end
end
