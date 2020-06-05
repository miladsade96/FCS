! Created by EverLookNeerSee@Github on 4/14/20.
! This program gets seconds from user and converts it
! to hour(s), minute(s) and second(s)

program convert_time
    implicit none
    integer :: hour, minute, second, temp, input_secs
    print *, "Enter seconds: "
    read *, input_secs
    second = mod(input_secs, 60)
    temp = input_secs / 60
    minute = mod(temp, 60)
    hour = temp / 60
    print *, input_secs, "seconds --> ", hour, "hour(s)", &
            minute, "minute(s)", second, "second(s)."
end program convert_time