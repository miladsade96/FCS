! Created by EverLookNeverSee@GitHub on 4/19/20.
! This program finds factorial of n

program factorial
    implicit none
    ! defining user input variable
    integer, parameter:: n
    ! defining counter and temporary factorial variables
    integer :: temp = 1, i
    print *, "Enter a positive integer value:"
    read *, n
end program factorial