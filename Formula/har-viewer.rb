class HarViewer < Formula
  desc "Terminal UI HAR file viewer"
  homepage "https://github.com/nassendelft/har-viewer"
  version "1.1.0"
  license "GPL-3.0"

  on_macos do
    url "https://github.com/nassendelft/har-viewer/releases/download/v1.1.0/har-viewer-macos-arm64.tar.gz"
    sha256 "509fe6aba1c0146d2020420c2be143ecbeaf68d69003d5af68b5c34769a00eb9"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nassendelft/har-viewer/releases/download/v1.1.0/har-viewer-linux-arm64.tar.gz"
      sha256 "11a0dbc837e4f5b7189905db0ebabef68ad8ecbfba5b2f97ff7d53deeaa84563"
    else
      url "https://github.com/nassendelft/har-viewer/releases/download/v1.1.0/har-viewer-linux-x64.tar.gz"
      sha256 "23b332e36c9ca1a986992dfcdda883c8d23482bee1ae66c3e9d645f4b709e427"
    end
  end

  def install
    bin.install "har-view"
  end

  test do
    assert_predicate bin/"har-view", :exist?
  end
end
