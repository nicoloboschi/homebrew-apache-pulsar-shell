class Shell < Formula
    desc "Shell for Apache Pulsar"
    homepage "https://pulsar.apache.org"
    url "https://github.com/datastax/pulsar/releases/download/ls210_1.1/lunastreaming-shell-2.10.1.1-bin.tar.gz"
    sha256 "3067d06b7bf45ecd1e887ffe9bebbf2d3c747561967811ee1b3c37be27fb4135"
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
  
