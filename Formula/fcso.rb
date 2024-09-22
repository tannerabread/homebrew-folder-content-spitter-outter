class Fcso < Formula
    desc "A script that filters files/folders using command-line arguments and a config file"
    homepage "https://github.com/tannerabread/folder-content-spitter-outter"
    url "https://github.com/tannerabread/folder-content-spitter-outter/archive/v1.2.0.tar.gz"
    # curl -L https://github.com/tannerabread/folder-content-spitter-outter/archive/v1.2.0.tar.gz | shasum -a 256
    sha256 "fb768886a3678df48566e0a045e8dfa627b98dc9c757c5a7eb2c69ccf6f6ab9a"
    version "1.2.0"
  
    def install
      bin.install "folder-content-spitter-outter.sh" => "fcso"

      # Create an alias for the tool
        (bash_completion/"fcso").write <<~EOS
          alias fcso='fcso'
        EOS
    end
  end
  
