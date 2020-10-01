# def validate(my_board)
#   validated = false
#   until validated
#     puts 'Provide a valid position between 1 and 9 and not taken'
#     begin
#       pos = Integer(gets.chomp)
#     rescue StandardError
#       puts 'Provide a valid integer'
#       retry
#     end
#     validated = true if pos < 10 && my_board.get_position(pos) == ' '
#   end
#   pos
# end

# def validate_name
#   validated = false
#   until validated
#     name = gets.chomp
#     validated = name.length > 2 ? true : (puts 'Please enter a valid name: ')
#   end
#   name.capitalize
# end