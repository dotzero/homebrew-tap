class GitProfile < Formula
  desc "Allows to add and switch between multiple user profiles in your git repositories"
  homepage "https://github.com/dotzero/git-profile"
  url "https://github.com/dotzero/git-profile/releases/download/v1.2.0/git-profile_1.2.0_macos_x86_64.tar.gz"
  version "1.2.0"
  sha256 "4e76928e772b9ed0d21cdecbcd953b46e99bf6e68a1d262f9a500bb327b861ea"

  def install
    bin.install "git-profile"
  end

  test do
    system "#{bin}/git-profile version"
  end
end
