class InstantOpen < Formula
  desc "Keyboard shortcut utility for quick application and website access"
  homepage "https://github.com/shmulisarmy/instant-open"
  url "https://github.com/shmulisarmy/instant-open/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "" # You'll need to add the actual SHA256 after creating the release
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "instant-open"
    bin.install "instant-open"
  end

  test do
    system "#{bin}/instant-open", "--version"
  end
end 