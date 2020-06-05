! Created by EverLookNeverSee@GitHub on 4/23/20.
! This program calculates the GCD betwen two numbers.

program gcd
    implicit none
    ! declaring variables
    integer :: num_1, num_2, temp
    ! gettig user input
    print *, "Enter two positive integers:"
    read *, num_1, num_2
    temp = mod(num_1, num_2)
    if (temp == 0) then
        print *, "The gcd of", num_1, "and", num_2, "is", num_2
        stop
    end if
    do while (temp /= 0)
        num_1 = num_2
        num_2 = temp
        temp = mod(num_1, num_2)
    end do
    print *, "The gcd is", num_2
end program gcd