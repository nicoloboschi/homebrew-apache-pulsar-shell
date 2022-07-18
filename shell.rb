class Shell < Formula
    desc "Shell for Apache Pulsar"
    homepage "https://pulsar.apache.org"
    url "https://github.com/nicoloboschi/homebrew-apache-pulsar-shell/releases/download/v0.1.0/apache-pulsar-shell-2.10.1.1-SNAPSHOT-shell.tar.gz"
    sha256 "9cdd8bc0e0327b8d16274439b486cdb14fae10dd699ce51a7be8c0f69ef24201"
    license "Apache-2.0"
  
    depends_on "openjdk"
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink libexec/"bin/pulsar-shell"
    end
   
  
    test do
      # `test do` will create, run in and delete a temporary directory.
      #
      # This test will fail and we won't accept that! For Homebrew/homebrew-core
      # this will need to be a test that verifies the functionality of the
      # software. Run the test with `brew test apache-pulsar-shell`. Options passed
      # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
      #
      # The installed folder is not in the path, so use the entire path to any
      # executables being tested: `system "#{bin}/program", "do", "something"`.
      system "false"
    end
  end
  
