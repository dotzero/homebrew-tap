# This file was generated by GoReleaser. DO NOT EDIT.
class GitProfile < Formula
  desc "Allows switch between multiple user profiles in git repositories"
  homepage "https://github.com/dotzero/git-profile"
  version "1.3.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dotzero/git-profile/releases/download/v1.3.2/git-profile_1.3.2_macos_x86_64.tar.gz"
    sha256 "bcda16960e43602ed582215d471037c93f9269d8bad3e70a94a48a1a86334c1a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/dotzero/git-profile/releases/download/v1.3.2/git-profile_1.3.2_linux_x86_64.tar.gz"
      sha256 "67c49673727a47884c48d61356049f1a89aaeef6213092d4ae583056c802a0e5"
    end
  end

  def install
    bin.install "git-profile"
  end

  test do
    system "#{bin}/git-profile version"
  end
end
