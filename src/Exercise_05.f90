! Created by EverLookNeverSee@GitHub on 5/30/20
! For more information see FCS/img/Exercise_05.png

program main
    implicit none
    ! declaring variables
    complex :: a, b, c, z_1, z_2, delta, sqr_delta
    ! getting coefficients from user
    print *, "Please enter coefficients:(a, b, c):"
    read *, a
    read *, b
    read *, c
    ! calculating dscriminant
    delta = b ** 2 - 4 * a * c
    sqr_delta = csqrt(delta)
    ! calculating roots
    z_1 = (-b + sqr_delta) / (2 * a)
    z_2 = (-b - sqr_delta) / (2 * a)
    ! printing results
    print *, "z_1:", z_1, "z_2:", z_2
end program main