class Fcso < Formula
    desc "A script that filters files/folders using command-line arguments and a config file"
    homepage "https://github.com/tannerabread/folder-content-spitter-outter"
    url "https://github.com/tannerabread/folder-content-spitter-outter/archive/v1.2.3.tar.gz"
    # curl -L https://github.com/tannerabread/folder-content-spitter-outter/archive/v1.2.3.tar.gz | shasum -a 256
    sha256 "3f08af0297dc77fe9b4c351fdec12a7d4305b62318769add0102c9938abcb000"
    version "1.2.3"
  
    def install
      bin.install "folder-content-spitter-outter.sh" => "fcso"

      # Create an alias for the tool
        (bash_completion/"fcso").write <<~EOS
          alias fcso='fcso'
        EOS
    end
  end
  
