class HarViewer < Formula
  desc "Terminal UI HAR file viewer"
  homepage "https://github.com/nassendelft/har-viewer"
  version "1.2.0"
  license "GPL-3.0"

  on_macos do
    url "https://github.com/nassendelft/har-viewer/releases/download/v1.2.0/har-viewer-macos-arm64.tar.gz"
    sha256 "593712a29e7bca1fe38c670e9227f50ea30a2987d68f2f1d9591bd1431a459e2"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nassendelft/har-viewer/releases/download/v1.2.0/har-viewer-linux-arm64.tar.gz"
      sha256 "b17ef41ab6c5ddf374f21264fb30b62f65a76e4e04e09616eb414a9a74585b96"
    else
      url "https://github.com/nassendelft/har-viewer/releases/download/v1.2.0/har-viewer-linux-x64.tar.gz"
      sha256 "3010df88099eaa0b61965055f69d807ee6bf5ef32a4cbb598b8049070ae78d54"
    end
  end

  def install
    bin.install "har-view"
  end

  test do
    assert_predicate bin/"har-view", :exist?
  end
end
