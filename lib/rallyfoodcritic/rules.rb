rule 'RALY001', 'Prefer single-quoted strings' do
  tags %w{style strings}
  recipe do |ast, filename|
    lines = File.readlines(filename)
    
    lines.collect.with_index do |line, index|
      if line.match('"(.*)"') && !line.match('\A\s?#') && !line.match('\'(.*)"(.*)"(.*)\'') && !line.match('"(.*)(#{.+}|\'|\\\a|\\\b|\\\r|\\\n|\\\s|\\\t)(.*)"')
        {
          :filename => filename,
          :matched => filename,
          :line => index + 1,
          :column => 0
        }
      end
    end.compact
  end
end