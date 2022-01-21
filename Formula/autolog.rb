# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Autolog < Formula
  desc "A commit-log based timesheet generator, written in Rust"
  homepage "https://github.com/daveymoores/autolog"
  url "https://github.com/daveymoores/autolog/releases/download/0.1.1-alpha/autolog-mac.tar.gz"
  sha256 "1138a0f884208ba79326ec27725e0adc547c3e6272d64d8fda5b56a0085f4557"
  version "0.1.1-alpha"

  def install
    bin.install "autolog"
  end
end
