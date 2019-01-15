require 'typhoeus'

module Reader
    def html_document(source)
        remote_file?(source) ? remote_html(source) : local_html(source)
    end

    private

    def local_html(path)
        File.read(path)
    end
    

    def remote_html(address)
        Typhoeus.get(address).body
    end
    

    def remote_file?(source)
        source.match(/^https?:\/\/.+$/)
    end
end