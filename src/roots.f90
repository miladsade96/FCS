! Created by EverLookNeverSee@GitHub on 4/15/20.
! This program calculates the roots of a quadratic equaion.

program roots
    implicit none
    ! defining variables
    real :: a, b, c, x_1, x_2, delta, sr_delta
    ! getting user input
    print *, "Enter the values of a, b, c:"
    read *, a, b, c
    ! calculating delta
    delta = (b ** 2) - (4.0 * a * c)
end program roots