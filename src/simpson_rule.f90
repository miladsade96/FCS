! Created by EverLookNeverSee@GitHub on 4/23/20.
! This program integrate a function numerically
! using simpson's rule.

! Simpson's Rule:
! https://en.wikipedia.org/wiki/Simpson's_rule

program simpson_rule
    implicit none
    ! declaring counter and number of panels variables
    integer :: i, n = 100
    ! declaring inerval and other variables
    real :: a = 1.0, b = 4.0, sum = 0.0, h, x
    h = (b - a) / n
    sum = sum + (a ** 3 * exp(-a ** 3) + &
            b ** 3 * exp(-b ** 3) + 4.0 * (b - h) ** 3&
            * exp(-(b - h) ** 3))
    x = a + h
    do i = 2, n-2, 2
        sum = sum + 4.0 * (x ** 3 * exp(-x ** 3))
        x = x + h
        sum = sum + 2.0 * (x ** 3 * exp(-x ** 3))
        x = x + h
    end do
    sum = h / 3.0 * sum
    print *, "The result of integration is:", sum
end program simpson_rule