! Created by EverLookNeverSee@GitHub on 6/9/20
! For more information see FCS/img/Exercise_10.png

program main
    implicit none
    ! declaring variables
    integer :: i, j, n, tmp
    integer , allocatable, dimension(:) :: a
    ! getting user input in order to specify length of series
    do
        print *, "Enter the length of series:"
        read *, n
        ! if user input is not a positive integer or is equal to zero
        if (n <= 0) then
            print *, "Number of elements should be positive integer."
            cycle
        else    ! if user input is a positive integer
            exit
        end if
    end do
    ! allocating memory space to array
    allocate(a(n))
    print *, "Enter value of elements:"
    ! assigning value of elements to array blocks
    do i = 1, size(a)
        print *, "a(", i, "):"
        read*, a(i)
    end do
end program main