! Created by EverLookNeverSee@GitHub on 5/23/20.
! This program finds the largest and the smallest elements of a sequence.

program largest_smalest
    implicit none
    ! declaring variables
    integer :: n, i
    ! declaring temporary biggest and smallest elements
    real :: Big, Small
    real, allocatable, dimension(:) :: a
    1   print *, "Number of elements in the sequence(positive integer):"
    read *, n
    ! checking user input that should be positive integer
    if (n <= 0) then
        goto 1
    end if
    ! creating an array with n blocks
    allocate(a(n))
    ! getting elements of sequence from user
    do i = 1, n
        print *,"a(",i,"):"
        read *, a(i)
    end do
    ! set to first element of sequence
    Big = a(1)
    Small = a(1)
    ! checking elements to find smallest and largest element
    do i = 2, n
        if (Big < a(i)) then
            Big = a(i)
        end if
        if (Small > a(i)) then
            Small = a(i)
        end if
    end do
end program largest_smalest