! Created by EverLookNeverSee@GitHub on 5/31/20
! For more information see FCS/img/Exercise_07.png


program main
    implicit none
    ! declaring variables
    integer :: i, degree
    real :: x, result = 0.0
    real, allocatable, dimension(:) :: P    ! to store polynomial coefficients
    ! specifying polynomial degree using user input
    do
        print *, "Enter degree of the polynomial:"
        read *, degree
        if (degree < 0) then
            print *, "Degree should not be negative!"
            cycle
        end if
        exit
    end do
    ! creating array blocks based on polynomial degree
    allocate(P(degree + 1))
    ! when we have constant(degree of zero) equation
    if (degree == 0) then
        print *, "Please enyter your single value(intercept):"
        read *, P(1)
        result = P(1)
    else    ! for upper degrres of equations
        print *, "Please enter the value of x:"
        read *, x
        print *, "Please enter polynomial coeffs using the form below:"
        print *, "ax**0 +- bx**1 +- cx**2 +- ... +- dx**n"
        do i = 1, size(P)
            print *, "Enter cefficient of x**", i - 1, ":"
            read *, P(i)
        end do
        do i = size(P), 1, -1
            result = result * x + P(i)
        end do
    end if
end program main