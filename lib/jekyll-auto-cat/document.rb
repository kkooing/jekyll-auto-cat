module Jekyll
  class Document
    def categories_from_path(special_dir)
      superdirs = relative_path.sub(special_dir, "")
      superdirs = superdirs.split(File::SEPARATOR)
      superdirs.reject! { |c| c.empty? || c == special_dir || c == basename }
      
      merge_data!({ "categories" => superdirs }, :source => "file path")
    end
  end
end
