program test
    use arithmetic_mod  ! importing arithmetic module
    implicit none

    ! declaring and initializing variables
    integer :: i_num_1 = 2, i_num_2 = 3
    real :: r_num_1 = 25.0, r_num_2 = 35.0
    complex :: com_num_1 = (7, 8), com_num_2 = (5, -7)


    ! Testing adder interface
    print "(a21)", "Test adder interface:"
    print "(a8,i1)", "2 + 3 = ", adder(i_num_1, i_num_2)
    print "(a14,f4.1)", "25.0 + 35.0 = ", adder(r_num_1, r_num_2)
    print "(a19,(f6.3,f6.3),(f6.3, f6.3))", "(7, 8) + (5, -7) = ", &
    adder(com_num_1, com_num_2)

    ! Testing subtractor interface
    print "(/,a26)", "Test subtractor interface:"
    print "(a8,i2)", "2 - 3 = ", subtractor(i_num_1, i_num_2)
    print "(a14,f5.1)", "25.0 - 35.0 = ", subtractor(r_num_1, r_num_2)
    print "(a19,(f5.3,f7.3))", "(7, 8) - (5, -7) = ", &
    subtractor(com_num_1, com_num_2)

    ! Testing multiplier interface
    print "(/,a26)", "Test multiplier interface:"
    print "(a8,i2)", "2 * 3 = ", multiplier(i_num_1, i_num_2)
    print "(a14,f5.1)", "25.0 * 35.0 = ", multiplier(r_num_1, r_num_2)
    print "(a19,(f6.3,f7.3))", "(7, 8) * (5, -7) = ", &
    multiplier(com_num_1, com_num_2)

    ! Testing divider interface
    print "(/,a23)", "Test divider interface:"
    print "(a8,i2)", "2 / 3 = ", divider(i_num_1, i_num_2)
    print "(a14,f8.6)", "25.0 / 35.0 = ", divider(r_num_1, r_num_2)
    print "(a19,(f9.6,f9.6))", "(7, 8) / (5, -7) = ", &
    divider(com_num_1, com_num_2)
    ! devided by zero tests
    print "(/,a22)", "Divided by zero tests:"
    print "(a8,i1)", "2 / 0 = ", divider(i_num_1, 0)
    print "(a13,f8.6)", "25.0 / 0.0 = ", divider(r_num_1, 0.0)
    print "(a18,(f9.6,f9.6))", "(7, 8) / (0, 0) = ", &
    divider(com_num_1, (0.0, 0.0))

end program test
