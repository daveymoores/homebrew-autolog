class Autolog < Formula
  desc "CLI tool for automated logging"
  homepage "https://github.com/daveymoores/autolog"
  url "https://github.com/daveymoores/autolog/releases/download/v0.3.69/autolog-mac.tar.gz"
  sha256 "acc1c62db2bc9530071271ff26779697477421fe40f66603af8f9043a582e5d2"
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
