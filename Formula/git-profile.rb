class GitProfile < Formula
  desc "Allows to add and switch between multiple user profiles in your git repositories"
  homepage "https://github.com/dotzero/git-profile"
  url "https://github.com/dotzero/git-profile/releases/download/v1.1.0/git-profile_1.1.0_macos_x86_64.tar.gz"
  version "1.1.0"
  sha256 "c862657da37681baf8d819490100446bcb84d68cb6cf4337f6e76aa67fd39d8b"

  def install
    bin.install "git-profile"
  end

  test do
    system "#{bin}/git-profile version"
  end
end
