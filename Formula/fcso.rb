class Fcso < Formula
    desc "A script that filters files/folders using command-line arguments and a config file"
    homepage "https://github.com/tannerabread/folder-content-spitter-outter"
    url "https://github.com/tannerabread/folder-content-spitter-outter/archive/v1.2.2.tar.gz"
    # curl -L https://github.com/tannerabread/folder-content-spitter-outter/archive/v1.2.2.tar.gz | shasum -a 256
    sha256 "96b049fe318425db559b2caaba371c477155dae04c0332e0eee4b63ac134b5df"
    version "1.2.2"
  
    def install
      bin.install "folder-content-spitter-outter.sh" => "fcso"

      # Create an alias for the tool
        (bash_completion/"fcso").write <<~EOS
          alias fcso='fcso'
        EOS
    end
  end
  
