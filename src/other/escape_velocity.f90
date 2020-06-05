! Created by EverLookNeverSee@GitHub on 4/14/20.
! This program calculates the escape velocity from earth.
! The escape velocity is defined as the minimum velocity
! that a projectile requires to escape from the earth.

program escape_velocity
    implicit none
    ! radius of earth in meter and mass of earth in kilogram
    real :: earth_radius = 6378.0e3, earth_mass = 5.98e24
    ! gravitational constant
    real :: G = 6.67300e-11
    real :: esc_vel
    esc_vel = sqrt(2.0 * G * earth_mass / earth_radius)
    print *, "Escape Velocity(Earth): ", esc_vel / 1000.0, "km/sec"
end program escape_velocity