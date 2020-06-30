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
end program quick_sort