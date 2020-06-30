program quick_sort
    interface
        ! declaring qs subroutine inside interface
        recursive subroutine qs(seq, first, last)
            integer, dimension(:), intent(inout) :: seq
            integer, intent(in) :: first, last
        end subroutine qs
    end interface
    ! declaring variables
    integer, allocatable, dimension(:) :: seq
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
    allocate(seq(n))
    ! getting elements of sequence from user
    print *, "Please enter the elements of sequence:"
    do i = 1, n
        print *, "Element number", i, ":"
        read *, seq(i)
    end do
    ! specifying first and last element
    first = 1
    last = n
    ! printing unsorted sequence
    print *, "a:",seq
    ! calling quick sort subroutine
    call qs(seq, first, last)
    ! printing sorted sequence
    print *, "a:", seq
end program quick_sort

! defining and implementing qs subroutine
recursive subroutine qs(seq, first, last)
    ! declaring dummy parameters and local variables
    integer, dimension(:), intent(inout) :: seq
    integer, intent(in) :: first, last
    integer :: mid, high, low, tmp
    ! initializing local variables
    mid = seq((first + last) / 2)
    high = last
    low = first
    ! quick sort algorithm
    do
        do while(seq(low) < mid)
            low = low + 1
        end do
        do while(seq(high) > mid)
            high = high - 1
        end do
        if (low <= high) then
            tmp = seq(low)
            seq(low) = seq(high)
            low = low + 1
            seq(high) = tmp
            high = high - 1
        end if
        if (low > high) then
            exit
        end if
    end do
    if (low < last) then
        call qs(seq, low, last)
    end if
    if (first < high) then
        call qs(seq, first, high)
    end if
end subroutine qs