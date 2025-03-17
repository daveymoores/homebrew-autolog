class Autolog < Formula
  desc "CLI tool for automated logging"
  homepage "https://github.com/daveymoores/autolog"
  url "https://github.com/daveymoores/autolog/releases/download/v0.3.69/autolog-mac.tar.gz"
  sha256 "d4fb4e5379942acbb165384ee28aa69237d72ffe4aa16014a6ff7d8617149d4c"
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
