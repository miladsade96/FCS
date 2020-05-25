! Created by EverLookNeverSee@GitHub on 5/25/20.
! This program sorts a sequence in ascending order.

program aac
    implicit none
    ! declaring variables
    integer :: n, i, j
    real :: temp
    real, allocatable, dimension(:) :: sequence
    ! getting user input in order to specify number of elements in sequence.
    n = -1
    do
        print *, "Enter the number of elements in the sequence:"
        read *, n
        if (n > 0) exit
    end do
end program aac