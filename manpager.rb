class Manpager < Formula
  desc "Colorize `man XXX`"
  homepage "https://github.com/Freed-Wu/manpager"
  url "https://github.com/Freed-Wu/manpager/archive/0.0.1.tar.gz"
  sha256 ""
  license "GPLv3"
  head "https://github.com/Freed-Wu/manpager.git", branch: "master"
  depends_on "cmake" => :build
end
