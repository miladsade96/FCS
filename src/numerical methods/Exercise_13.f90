! Created by EverLookNeverSee@GitHub on 6/11/20
! For more information see FCS/img/Exercise_13.png

program main
    implicit none
    ! declaring variables
    integer :: n, i, j
    real :: tmp_1, tmp_2, tmp_3, tmp_4, tmp_5, corr, numerator, denominator
    real, allocatable, dimension(:) :: x, y
    ! initializing temporary variables
    tmp_1 = 0.0; tmp_2 = 0.0; tmp_3 = 0.0; tmp_4 = 0.0; tmp_5 = 0.0
    ! specifying number of elements in sets
    do
        print *, "Enter the number of elements in sets:"
        read *, n
        if (n <= 0) then
            print *, "You should enter a positive integer number!"
            cycle
        else
            exit
        end if
    end do
    ! allocating memory space to arrays
    allocate(x(n))
    allocate(y(n))
    ! assigning values to sets using user input
    ! x set
    do i = 1, n
        print *, "x(", i, "):"
        read *, x(i)
    end do
    ! y set
    do j = 1, n
        print *, "y(", j, "):"
        read *, y(j)
    end do
    ! --------------------------------------------------------------------
    ! tmp_1
    do i = 1, n
        tmp_1 = tmp_1 + (x(i) * y(i))
    end do
    ! tmp_2
    do i = 1, n
        tmp_2 = tmp_2 + x(i)
    end do
    ! tmp_3
    do i = 1, n
        tmp_3 = tmp_3 + y(i)
    end do
    ! tmp_4
    do i = 1, n
        tmp_4 = tmp_4 + x(i) ** 2
    end do
    ! tmp_5
    do i = 1, n
        tmp_5 = tmp_5 + y(i) ** 2
    end do
    ! --------------------------------------------------------------------
    ! calculating the numerator
    numerator = (n * tmp_1) - (tmp_2 * tmp_3)
    ! calculating denominator
    denominator = sqrt(n * tmp_4 - tmp_2 ** 2) * sqrt(n * tmp_5 - tmp_3 ** 2)
end program main