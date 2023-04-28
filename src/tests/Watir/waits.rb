# frozen_string_literal: true

require 'watir'

begin
  Watir::Wait.while timeout: 30, interval: 5 do
    puts 'Repeating an action while the execution condition stay true'
    true
  end
rescue Watir::Wait::TimeoutError
  puts 'Timeout exception captured'
end

begin
  Watir::Wait.until timeout: 30, interval: 5 do
    puts 'Repeating an action until the execution condition becomes true'
    false
  end
rescue Watir::Wait::TimeoutError
  puts 'Timeout exception captured'
end
