! Created by EverLookNeverSee@GitHub on 5/28/20
! For more information see FCS/img/Exercise_02.png

program main
    implicit none
    ! P = earth pressure on a retaining structure
    ! w --> wieght per unit volume of filled up earth
    ! h --> height of earth fill
    ! phi --> angle of repose of filled material
    ! declaring variables
    real :: w = 513.0, h = 3.0, phi = 30.0, P, radian_phi
    ! the argument of trigonometric functions must be in radians
    radian_phi = phi * 3.1415 / 180.0
    ! calculating P
    P = ((w * h ** 2.0) / 2.0) * ((1.0 - sin(radian_phi)) / (1.0 + sin(radian_phi)))
    print *, "P:", P
end program main