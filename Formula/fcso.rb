class Fcso < Formula
    desc "A script that filters files/folders using command-line arguments and a config file"
    homepage "https://github.com/tannerabread/folder-content-spitter-outter"
    url "https://github.com/tannerabread/folder-content-spitter-outter/archive/v1.2.1.tar.gz"
    # curl -L https://github.com/tannerabread/folder-content-spitter-outter/archive/v1.2.1.tar.gz | shasum -a 256
    sha256 "ccbe7c0901ca4f725707c872c2efb0fc9ef569c8b319ca34476744cc84e755aa"
    version "1.2.1"
  
    def install
      bin.install "folder-content-spitter-outter.sh" => "fcso"

      # Create an alias for the tool
        (bash_completion/"fcso").write <<~EOS
          alias fcso='fcso'
        EOS
    end
  end
  
