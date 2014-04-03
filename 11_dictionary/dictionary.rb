class Dictionary

def initialize
	@entries = {}
end

def entries
	@entries
end

def add(entry)

	case entry
		when Hash 
			@entries.merge!(entry)
		when String 
			@entries[entry] = nil
	end
	
end

def keywords
	@entries.keys.sort!
end

def include?(keyword)
	@entries.include?(keyword)
end

def find(keyword)
	result = @entries.select { |k,v| k.match(/#{keyword}/) }
end

def printable
	result = ""

	@entries.keys.sort.each do |k|
		result += "[#{k}] \"#{@entries[k]}\"\n"
	end
	
	result.gsub!(/\n$/, '')
	result
end

end
