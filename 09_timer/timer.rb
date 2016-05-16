class Timer
    attr_accessor :seconds

    def initialize
        @seconds = 0
    end

    def time_string
        timer_string = ""
        if @seconds < 10
            timer_string = "00:00:0" + @seconds.to_s
        elsif @seconds < 60
            timer_string = "00:00:" + @seconds.to_s
        elsif @seconds < 3600
            timer_string = "00" + self.seconds_to_minutes
        else
            timer_string = self.seconds_to_hours
        end
    end

    def seconds_to_minutes
        minute_string = ""
        second_string = ""
        timer_string = ""
        minutes = @seconds / 60
        counter = 0

        while counter < minutes
            @seconds = @seconds - 60
            counter = counter + 1
        end
        new_counter = 0

        if minutes > 60
            while new_counter <= @seconds / 60 / 60
                minutes = minutes - 60
                new_counter = new_counter + 1
            end
        end

        if minutes < 10
            minute_string = minute_string + "0" + minutes.to_s + ":"
        else
            minute_string = minute_string + minutes.to_s + ":"
        end
        if seconds < 10
            second_string = second_string + "0" + @seconds.to_s
        else
            second_string = second_string + @seconds.to_s
        end
        timer_string = ":" + minute_string + second_string
    end

    def seconds_to_hours
        timer_string = ""
        hours = (@seconds / 60) / 60
        minutes = self.seconds_to_minutes
        timer_string = "0" + hours.to_s + minutes
    end
end
