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
    ! allocating memory for array
    allocate(sequence(n))
    ! getting elements of sequence from user input
    do i = 1, n
        print *, "Element number", i, "is:"
        read *, sequence(i)
    end do
end program aac