require 'find_identical/reader'

class FindIdentical
    def initialize(document_source)
        @html_document = Reader.html_document(document_source)
    end

    def identical
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