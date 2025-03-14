class Autolog < Formula
  desc "CLI tool for automated logging"
  homepage "https://github.com/daveymoores/autolog"
  url "https://github.com/daveymoores/autolog/releases/download/v0.2.1-beta/autolog-mac.tar.gz"
  sha256 "406413f1466c096a502b7aa001b65e2610bbb2a13303f464b89389465bffcabd"
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
