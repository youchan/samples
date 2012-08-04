require './LlnocCipher.tab'

text = (ARGV.size >0 ? ARGF : $stdin).read
str = ""
ch = 0
i = 0

text.split("\n").each do |l|
  result = 3
  begin
    result = LlnocCipherParser.new.parse(l)
  rescue => e
    result = 3
  end
  # p l
  # p "result = " + result.to_s
  ch = ch << 2 | result
  if (i % 4) == 3
    str += ch.chr
    ch = 0
  end
  i+=1
end

p str
