require 'find_identicals/reader'

class FindIdenticals
    include Reader
    
    def initialize(document_source)
        @html_document = html_document(document_source)
    end

    def identicals
        all_ids = html_ids
        all_ids
            .find_all { |id| all_ids.count(id) > 1 }
            .reject(&:nil?)
            .map { |id| id.first }
            .uniq || []
    end

    private

    def html_ids
        @html_document.scan(/^.*id="([^"]*)".*$/)
    end
end