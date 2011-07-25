command 'Swap Case' do |cmd|
  cmd.output = :replace_selection
  cmd.input = :selection, :word
  cmd.invoke do |context|
    word = STDIN.read
    context.exit_discard if word.nil?
    print word.swapcase
  end
end

command 'Paste and Swap Case' do |cmd|
  cmd.scope = 'source.php'
  cmd.key_binding = "M1+M2+V"
  cmd.output = :insert_as_text
  cmd.input = :clipboard
  cmd.invoke do |context|
    word = STDIN.gets
    context.exit_discard if word.nil?
    word.swapcase
  end
end

command 'Copy and Swap Case' do |cmd|
  cmd.scope = 'source.php'
  cmd.key_binding = "M1+M2+C"
  cmd.output = :copy_to_clipboard
  cmd.input = :selection
  cmd.invoke do |context|
    word = STDIN.gets
    context.exit_discard if word.nil?
    word.swapcase
  end
end
