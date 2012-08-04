require './LlnocCipher.tab'

def parse_line(s)
  begin
    return LlnocCipherParser.new.parse(s)
  rescue => e
    p "parse err: " + s
    p e
    return 3
  end
end

text = (ARGV.size >0 ? ARGF : $stdin).read
str = ""
ch = 0
i = 0

text.split("\n").each do |l|
  #ch = ch << 2
  result = 3
  begin
    result = LlnocCipherParser.new.parse(l)
  rescue => e
    p "parse err: " + l
    p e
    result = 3
  end
  p "result is nil " if result == nil
  p "result = " + result.to_s if result
  ch = ch << 2 | result
  if (i % 4) == 3
    str += ch.chr
    ch = 0
  end
  i+=1
end

p 'str: ' + str
