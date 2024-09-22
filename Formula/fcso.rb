class Fcso < Formula
    desc "A script that filters files/folders using command-line arguments and a config file"
    homepage "https://github.com/tannerabread/folder-content-spitter-outter"
    url "https://github.com/tannerabread/folder-content-spitter-outter/archive/v1.1.0.tar.gz"
    # curl -L https://github.com/tannerabread/folder-content-spitter-outter/archive/v1.1.0.tar.gz | shasum -a 256
    sha256 "bc0fd754d5f5b04d4b43e86ea15c0784096078d4e73e8eb62747a799b777ddc7"
    version "1.1.0"
  
    def install
      bin.install "folder-content-spitter-outter.sh" => "fcso"

      # Create an alias for the tool
        (bash_completion/"fcso").write <<~EOS
          alias fcso='fcso'
        EOS
    end
  end
  
