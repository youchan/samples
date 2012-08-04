#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.8
# from Racc grammer file "".
#

require 'racc/parser.rb'
class LlnocCipherParser < Racc::Parser

module_eval(<<'...end LlnocCipher.y/module_eval...', 'LlnocCipher.y', 68)
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

...end LlnocCipher.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
     9,    10,    11,    12,    13,    14,    15,    16,    17,    18,
    19,    20,    21,     9,    10,    11,    12,    13,    14,    15,
    16,    17,    18,    19,    20,    21,     9,    10,    11,    12,
    13,    14,    15,    16,    17,    18,    19,    20,    21,     9,
    10,    11,    12,    13,    14,    15,    16,    17,    18,    19,
    20,    21,     9,    10,    11,    12,    13,    14,    15,    16,
    17,    18,    19,    20,    21,     9,    10,    11,    12,    13,
    14,    15,    16,    17,    18,    19,    20,    21,     9,    10,
    11,    12,    13,    14,    15,    16,    17,    18,    19,    20,
    21,     9,    10,    11,    12,    13,    14,    15,    16,    17,
    18,    19,    20,    32,     9,    10,    11,    12,    13,    14,
    15,    16,    17,    18,    19,    20,    21,    28,    26,    27,
    33,    25,    24,    23,    22,    32 ]

racc_action_check = [
     0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     0,     0,     0,    28,    28,    28,    28,    28,    28,    28,
    28,    28,    28,    28,    28,    28,    27,    27,    27,    27,
    27,    27,    27,    27,    27,    27,    27,    27,    27,    26,
    26,    26,    26,    26,    26,    26,    26,    26,    26,    26,
    26,    26,    25,    25,    25,    25,    25,    25,    25,    25,
    25,    25,    25,    25,    25,    24,    24,    24,    24,    24,
    24,    24,    24,    24,    24,    24,    24,    24,     6,     6,
     6,     6,     6,     6,     6,     6,     6,     6,     6,     6,
     6,     7,     7,     7,     7,     7,     7,     7,     7,     7,
     7,     7,     7,     7,    23,    23,    23,    23,    23,    23,
    23,    23,    23,    23,    23,    23,    23,     5,     5,     5,
    22,     4,     3,     2,     1,    30 ]

racc_action_pointer = [
    -5,   124,   120,   120,   117,   115,    73,    86,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   120,    99,    60,    47,    34,    21,     8,   nil,
   108,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil ]

racc_action_default = [
   -30,   -30,    -1,    -2,    -3,   -30,   -10,   -11,   -12,   -16,
   -17,   -18,   -19,   -20,   -21,   -22,   -23,   -24,   -25,   -26,
   -27,   -28,   -30,   -30,   -30,   -30,   -30,   -30,   -30,   -14,
   -15,   -13,   -29,    40,    -5,    -9,    -7,    -4,    -6,    -8 ]

racc_goto_table = [
     5,    29,    31,     4,     3,     2,    30,     1,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    34,    35,    36,    37,    38,    39 ]

racc_goto_check = [
     5,     8,     8,     4,     3,     2,     7,     1,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,     5,     5,     5,     5,     5,     5 ]

racc_goto_pointer = [
   nil,     7,     5,     4,     3,     0,   nil,     0,    -5 ]

racc_goto_default = [
   nil,   nil,   nil,   nil,   nil,   nil,     6,     7,     8 ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 19, :_reduce_1,
  1, 19, :_reduce_2,
  1, 19, :_reduce_3,
  3, 20, :_reduce_4,
  3, 20, :_reduce_5,
  3, 22, :_reduce_6,
  3, 22, :_reduce_7,
  3, 21, :_reduce_8,
  3, 21, :_reduce_9,
  1, 23, :_reduce_none,
  1, 23, :_reduce_none,
  1, 24, :_reduce_12,
  2, 24, :_reduce_13,
  2, 24, :_reduce_14,
  2, 24, :_reduce_15,
  1, 26, :_reduce_none,
  1, 26, :_reduce_none,
  1, 26, :_reduce_none,
  1, 26, :_reduce_none,
  1, 26, :_reduce_none,
  1, 26, :_reduce_none,
  1, 26, :_reduce_none,
  1, 26, :_reduce_none,
  1, 26, :_reduce_none,
  1, 26, :_reduce_none,
  1, 26, :_reduce_none,
  1, 26, :_reduce_none,
  1, 25, :_reduce_28,
  2, 25, :_reduce_29 ]

racc_reduce_n = 30

racc_shift_n = 40

racc_token_table = {
  false => 0,
  :error => 1,
  :COLON => 2,
  :PERIOD => 3,
  :HYPHEN => 4,
  "A" => 5,
  "B" => 6,
  "C" => 7,
  "D" => 8,
  "E" => 9,
  "F" => 10,
  "a" => 11,
  "b" => 12,
  "c" => 13,
  "d" => 14,
  "e" => 15,
  "f" => 16,
  :DIGIT => 17 }

racc_nt_base = 18

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "COLON",
  "PERIOD",
  "HYPHEN",
  "\"A\"",
  "\"B\"",
  "\"C\"",
  "\"D\"",
  "\"E\"",
  "\"F\"",
  "\"a\"",
  "\"b\"",
  "\"c\"",
  "\"d\"",
  "\"e\"",
  "\"f\"",
  "DIGIT",
  "$start",
  "addr",
  "period_sep",
  "colon_sep",
  "hyphen_sep",
  "number",
  "hex_digit",
  "dec_num",
  "hex_ch" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'LlnocCipher.y', 12)
  def _reduce_1(val, _values, result)
        return 3 unless val[0].length == 4
    val[0].each do |v|
      return 3 unless v[0] == :DEC
      return 3 unless (0..255).include?(v[1].to_i)
    end
    return 1
  
    result
  end
.,.,

module_eval(<<'.,.,', 'LlnocCipher.y', 21)
  def _reduce_2(val, _values, result)
        p 'case'
    case val[0].length
    when 6
      p 'when 6'
      val[0].each do |v|
        return 3 unless v[1].length == 2
      end
      return 0
    when 8
      p 'when 8'
      val[0].each do |v|
        return 3 if v[1].length > 4
      end
      return 2
    else
      p 'else'
      return 3
    end
  
    result
  end
.,.,

module_eval(<<'.,.,', 'LlnocCipher.y', 42)
  def _reduce_3(val, _values, result)
        p 'hyphen_sep'
    return 3 unless val[0].length == 6
    val[0].each do |v|
      return 3 unless v[1].length == 2
    end
    return 0
  
    result
  end
.,.,

module_eval(<<'.,.,', 'LlnocCipher.y', 50)
  def _reduce_4(val, _values, result)
     result = [val[0], val[2]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'LlnocCipher.y', 51)
  def _reduce_5(val, _values, result)
     result << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'LlnocCipher.y', 52)
  def _reduce_6(val, _values, result)
     result = [val[0], val[2]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'LlnocCipher.y', 53)
  def _reduce_7(val, _values, result)
     result << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'LlnocCipher.y', 54)
  def _reduce_8(val, _values, result)
     result = [val[0], val[2]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'LlnocCipher.y', 55)
  def _reduce_9(val, _values, result)
     result << val[2] 
    result
  end
.,.,

# reduce 10 omitted

# reduce 11 omitted

module_eval(<<'.,.,', 'LlnocCipher.y', 57)
  def _reduce_12(val, _values, result)
     result = [:HEX, val[0]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'LlnocCipher.y', 58)
  def _reduce_13(val, _values, result)
     result = [:HEX, val[0][1] + val[1]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'LlnocCipher.y', 59)
  def _reduce_14(val, _values, result)
     result = [:HEX, val[0][1] + val[1]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'LlnocCipher.y', 60)
  def _reduce_15(val, _values, result)
     result = [:HEX, val[0][1] + val[1][1]] 
    result
  end
.,.,

# reduce 16 omitted

# reduce 17 omitted

# reduce 18 omitted

# reduce 19 omitted

# reduce 20 omitted

# reduce 21 omitted

# reduce 22 omitted

# reduce 23 omitted

# reduce 24 omitted

# reduce 25 omitted

# reduce 26 omitted

# reduce 27 omitted

module_eval(<<'.,.,', 'LlnocCipher.y', 62)
  def _reduce_28(val, _values, result)
     result = [:DEC, val[0]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'LlnocCipher.y', 63)
  def _reduce_29(val, _values, result)
     result = [:DEC, val[0][1] + val[1]] 
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

end   # class LlnocCipherParser

