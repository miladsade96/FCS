! Created by EverLookNeverSee@GitHub on 4/23/20.
! This program integrate a function numerically
! using trapezoidal rule.

program trapezoidal_rule
    implicit none
    ! declaring counter variables
    integer :: i, n = 100
    ! declaring limits of integration
    real :: a = 1.0, b = 4.0
    ! declaring length of intervals and sum, h, x variables
    real :: sum = 0.0, h, x
    h = (b - a) / n
    sum = sum + 0.5 * (a ** 3 * exp(-a ** 3) + b ** 3 * exp(-b ** 3))
    x = a + h
    do i = 2, 100
        sum = sum + (x ** 3 * exp(-x ** 3))
    end do
    sum = sum * h
    print *, "the result of integration is:", sum
end program trapezoidal_rule