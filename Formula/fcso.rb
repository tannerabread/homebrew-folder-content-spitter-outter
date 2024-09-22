class Fcso < Formula
    desc "A script that filters files/folders using command-line arguments and a config file"
    homepage "https://github.com/tannerabread/folder-content-spitter-outter"
    url "https://github.com/tannerabread/folder-content-spitter-outter/archive/v1.0.1.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    version "1.0.1"
  
    def install
      bin.install "folder-content-spitter-outter.sh" => "fcso"

      # Create an alias for the tool
        (bash_completion/"fcso").write <<~EOS
          alias fcso='fcso'
        EOS
    end
  end
  
