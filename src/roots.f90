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
     if (delta > 0.0) then
        sr_delta = sqrt(delta)
        x_1 = (-b + sr_delta) / (2.0 * a)
        x_2 = (-b - sr_delta) / (2.0 * a)
        print *, "roots are:", x_1, x_2
    elseif (delta == 0.0) then
        x_1 = -b / (2.0 * a)
        x_2 = x_1
        print *, "roots are equal:", x_1, x_2
    else    ! value of delta is less than 0.0
        print *, "This quadratic equation has no real root."
    end if
end program roots