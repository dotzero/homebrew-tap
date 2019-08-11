# This file was generated by GoReleaser. DO NOT EDIT.
class GitProfile < Formula
  desc "Allows to add and switch between multiple user profiles in your git repositories"
  homepage "https://github.com/dotzero/git-profile"
  version "1.3.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dotzero/git-profile/releases/download/v1.3.0/git-profile_1.3.0_macos_x86_64.tar.gz"
    sha256 "a18bbb4d7b043c9db222f2c879ca7a857811acacdc19bbabe6ea195a2666cfd6"
  elsif OS.linux?
    url "https://github.com/dotzero/git-profile/releases/download/v1.3.0/git-profile_1.3.0_linux_x86_64.tar.gz"
    sha256 "6e759e1ab82a3cdfba6cc0c0474219b9f42470d4a1c8711717938c42aa480d2a"
  end

  def install
    bin.install "git-profile"
  end

  test do
    system "#{bin}/git-profile version"
  end
end
