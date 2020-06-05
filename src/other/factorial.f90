! Created by EverLookNeverSee@GitHub on 4/19/20.
! This program finds factorial of n

program factorial
    implicit none
    ! defining user input variable
    integer :: n
    ! defining counter and temporary factorial variables
    integer :: temp = 1, i
1   print *, "Enter a positive integer value:"
    read *, n
    if (n < 1) then
        print *, "You should enter a positive integer value!"
        goto 1
    end if
    do i = 1, n
        temp = temp * i
    end do
    print *, temp
end program factorial