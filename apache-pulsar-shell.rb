class ApachePulsarShell < Formula
    desc "Shell for Apache Pulsar"
    homepage "https://pulsar.apache.org"
    url "file:///Users/nicolo.boschi/dev/luna210/distribution/shell/target/apache-pulsar-shell-2.10.1.1-SNAPSHOT-shell.tar.gz"
    sha256 "081aab14bf5094aa13a6c9f225807e2aa9afc39ff23e328459ba0900a48ea658"
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
  