! Created by EverLookNeverSee@GitHub on 4/22/20.
! This program add up all even numbers between 1 to user input.

program sum_of_evens
    implicit none
    ! defining variables
    integer :: number, i, sum = 0
    ! getting user input
1   print *, "Please enter a positive integer number:"
    read *, number
    ! Edge case
    if (number <= 0) then
        print *, "Invalid input!"
        goto 1
    end if
end program sum_of_evens