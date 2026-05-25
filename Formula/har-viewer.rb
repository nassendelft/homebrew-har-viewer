class HarViewer < Formula
  desc "Terminal UI HAR file viewer"
  homepage "https://github.com/nassendelft/har-viewer"
  version "1.0.1"
  license "GPL-3.0"

  on_macos do
    url "https://github.com/nassendelft/har-viewer/releases/download/v1.0.1/har-viewer-macos-arm64.tar.gz"
    sha256 "14b4f8f6b7a5eb84b53ce1e8277fe3109a1ff8057604963f723d23bcbba07240"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nassendelft/har-viewer/releases/download/v1.0.1/har-viewer-linux-arm64.tar.gz"
      sha256 "124860daf00fa31eaf385f279c2de8baaecabeb60e54899f0123b236b02768ab"
    else
      url "https://github.com/nassendelft/har-viewer/releases/download/v1.0.1/har-viewer-linux-x64.tar.gz"
      sha256 "04cd21c1991d3dbf42bc369dd0bd3bed732d23a2b97493f1b159ac151915b905"
    end
  end

  def install
    bin.install "har-view"
  end

  test do
    assert_predicate bin/"har-view", :exist?
  end
end
