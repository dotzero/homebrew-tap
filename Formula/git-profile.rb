class GitProfile < Formula
  desc "Allows to add and switch between multiple user profiles in your git repositories"
  homepage "https://github.com/dotzero/git-profile"
  url "https://github.com/dotzero/git-profile/releases/download/v1.1.0/git-profile_1.1.0_macos_x86_64.tar.gz"
  version "1.1.0"
  sha256 "064e23e9ffca7402f0e16ae2dd74109587a51e1d878f7ffb9bd27e1d5c77d832"

  def install
    bin.install "auto-release"
  end

  test do
    system "#{bin}/git-profile -v"
  end
end
