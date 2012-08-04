class LlnocCipherParser
prechigh
  right COLON
preclow

rule
  addr : period_sep
  {
    return 3 unless val[0].length == 4
    val[0].each do |v|
      return 3 unless v[0] == :DEC
      return 3 if v[1][0] == '0'
      return 3 unless (0..255).include?(v[1].to_i)
    end
    return 1 # ipv4
  }
       | colon_sep
  {
    case val[0].length
    when 6
      val[0].each do |v|
        return 3 unless v[1].length == 2
      end
      return 0 # mac
    when 8
      val[0].each do |v|
        return 3 if v[1].length > 4
        return 3 if v[1][0] == '0'
      end
      return 2 # ipv6
    else
      return 3 # other
    end
  }
       | hyphen_sep
  {
    return 3 unless val[0].length == 6
    val[0].each do |v|
      return 3 unless v[1].length == 2
    end
    return 0 # mac
  }

  period_sep : number PERIOD number { result = [val[0], val[2]] }
             | period_sep PERIOD number { result << val[2] }
  hyphen_sep : number HYPHEN number { result = [val[0], val[2]] }
            | hyphen_sep HYPHEN number { result << val[2] }
  colon_sep : number COLON number { result = [val[0], val[2]] }
            | colon_sep COLON number { result << val[2] }
  number : hex_digit | dec_num
  hex_digit : hex_ch { result = [:HEX, val[0]] }
            | dec_num hex_ch { result = [:HEX, val[0][1] + val[1]] }
            | hex_digit hex_ch { result = [:HEX, val[0][1] + val[1]] }
            | hex_digit dec_num { result = [:HEX, val[0][1] + val[1][1]] }
  hex_ch : 'A' | 'B' | 'C' | 'D' | 'E' | 'F' | 'a' | 'b' | 'c' | 'd' | 'e' | 'f'
  dec_num : DIGIT { result = [:DEC, val[0]] }
          | dec_num DIGIT { result = [:DEC, val[0][1] + val[1]] }
end

---- inner
def parse(source)
  @queue = []
  source.each_char do |ch|
    case ch
    when '.'
      @queue << [:PERIOD, ch]
    when ':'
      @queue << [:COLON, ch]
    when '-'
      @queue << [:HYPHEN, ch]
    when "\n"
      @queue << [:EOL, ch]
    when /\d/ 
      @queue << [:DIGIT, ch]
    else
      @queue << [ch, ch]
    end
  end
  do_parse
end # def parse(source)

def next_token
  p @queue if @yydebug
  @queue.shift
end # def next_token

---- footer

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
  ch = ch << 2 | result
  if (i % 4) == 3
    str += ch.chr
    ch = 0
  end
  i+=1
end

p str

