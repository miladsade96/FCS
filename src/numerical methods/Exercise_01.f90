! Created by EverLookNeverSee@GitHub on 5/28/20
! For more information see FCS/img/Exercise_01.png

program main
    ! I --> current(amps)
    ! E --> voltage(volts)
    ! R --> resistance(ohms)
    ! L --> inductance(henrys)
    ! C --> capacitance(farads)
    ! f --> frequency(herts)
    implicit none
    ! declaring variables
    real :: I, E, R, L, C, f
    ! getting user input
    print *, "Enter values for E, R, L, C, and f respectively:"
    read *, E, R, L, C, f
    ! calculating I and printing the result
    I = E / sqrt(R ** 2 + ((2.0 * 3.1415 / L) - 1.0 / (2.0 * 3.1415 * f * C)) ** 2)
    print "(a3,f13.9)", "I: ", I
end program main
