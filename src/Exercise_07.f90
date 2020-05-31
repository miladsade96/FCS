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
end program main