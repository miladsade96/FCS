program quick_sort
    interface
        ! declaring qs subroutine inside interface
        recursive subroutine qs(seq, first, last)
            integer, dimension(:), intent(inout) :: seq
            integer, intent(in) :: first, last
        end subroutine qs
    end interface
    ! declaring variables
    integer, allocatable, dimension(:) :: a
    integer :: first, last, n, i
    ! getting length of sequence from user input
    do
        print *, "Enter length of sequence:"
        read *, n
        if (n > 0) then
            exit
        else
            print *, "Length should be positive integer!"
            cycle
        end if
    end do
    ! allocating memory space to array
    allocate(a(n))
    ! getting elements of sequence from user
    print *, "Please enter the elements of sequence:"
    do i = 1, n
        print *, "Element number", i, ":"
        read *, a(i)
    end do
    ! specifying first and last element
    first = 1
    last = n
    ! printing unsorted sequence
    print *, "a:",a
    ! calling quick sort subroutine
    call qs(a, first, last)
    ! printing sorted sequence
    print *, "a:", a
end program quick_sort

! defining and implementing qs subroutine
recursive subroutine qs(seq, first, last)
    ! declaring dummy parameters and local variables
    integer, dimension(:), intent(inout) :: seq
    integer, intent(in) :: first, last
    integer :: mid, high, low, tmp
end subroutine qs