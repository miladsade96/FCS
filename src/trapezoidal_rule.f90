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
end program trapezoidal_rule