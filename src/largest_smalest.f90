! Created by EverLookNeverSee@GitHub on 5/23/20.
! This program finds the largest and the smallest elements of a sequence.

program largest_smalest
    implicit none
    ! declaring variables
    integer :: n
    real, allocatable, dimension(:) :: a
    1   print *, "Number of elements in the sequence(positive integer):"
    read *, n
    ! checking user input that should be positive integer
    if (n <= 0) then
        goto 1
    end if
end program largest_smalest