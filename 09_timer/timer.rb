class Timer
    attr_accessor :seconds

    def initialize
        @seconds = 0
    end

    def time_string
        hour = (@seconds / 3600).floor
        minute = ((@seconds - hour * 3600) / 60).floor
        second = @seconds - (minute * 60) - (hour * 3600)
        print("#{hour}, #{minute}, #{second}")
        padded_hour = pad(hour)
        padded_minute = pad(minute)
        padded_second = pad(second)

        return "#{padded_hour}:#{padded_minute}:#{padded_second}"
    end

    def pad(number)
        return sprintf("%02d", number)
    end

end

