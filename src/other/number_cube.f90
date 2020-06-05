! Created by EverLookNeverSee@GitHub on 4/22/20.
! This program finds all numbers between 100 and 999 such that the
! number is equal to the sum of the cubes of the digits. For Example:
! 153 = (1 ** 3) + (5 ** 3) + (3 ** 3)

program number_cube
    implicit none
    ! defining integer variables
    integer :: number, d1, d2, d3, d_temp
    ! printing a statement
    print *, "The numbers are:"
    ! Extracting digits using do
    do number = 100, 999
        d1 = number / 100       ! The left most digit of number
        d_temp = mod(number, 100)
        d2 = d_temp / 10        ! The second digit
        d3 = mod(d_temp, 10)    ! The right most digit
        if (d1 ** 3 + d2 ** 3 + d3 ** 3 == number) then
            print *, number
        end if
    end do
end program number_cube