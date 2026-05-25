class HarViewer < Formula
  desc "Terminal UI HAR file viewer"
  homepage "https://github.com/nassendelft/har-viewer"
  version "1.0.0"
  license "GPL-3.0"

  on_macos do
    url "https://github.com/nassendelft/har-viewer/releases/download/v1.0.0/har-viewer-macos-arm64.tar.gz"
    sha256 "c194c32c6b9f74bce0ce341a848b9bf8ba46c3eb29ad848b3bcae62b20644f11"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nassendelft/har-viewer/releases/download/v1.0.0/har-viewer-linux-arm64.tar.gz"
      sha256 "aa5c3db8f4641946abde077b1aac6ee894726ed1f068f12cc27cc5603eeca6a9"
    else
      url "https://github.com/nassendelft/har-viewer/releases/download/v1.0.0/har-viewer-linux-x64.tar.gz"
      sha256 "9509cc21a80c77c9af47513c3b7f1a763b87cde9b214bb7469ce19c7ed83dd62"
    end
  end

  def install
    bin.install "har-view"
  end

  test do
    assert_predicate bin/"har-view", :exist?
  end
end
