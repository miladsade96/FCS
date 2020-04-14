! Created by EverLookNeverSee@GitHub on 4/14/20.
! This program tests whether input number is even or odd.

program even_odd
    implicit none
    integer :: number
    print *, "Enter a positive integer: "
    read *, number
    if (number / 2 * 2 - number == 0) then
        print *, number, "is an even number."
    else
        print *, number, "is an odd number."
    end if
end program even_odd