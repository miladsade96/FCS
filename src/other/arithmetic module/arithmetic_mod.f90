! Generic procedures
! Defining a generic interface to a procedure is a way of grouping procedures with similar
! functionality together under one name. Typically a generic procedure interface has a general
! name and contains a list of specific procedures with similar functionality which are implemented
! for all data types in a program.

module arithmetic_mod
    implicit none
    private
    public :: adder, subtractor, multiplier, divider

    interface adder
        procedure int_add, real_add, complex_add
    end interface adder

    interface subtractor
        procedure int_sub, real_sub, complex_sub
    end interface subtractor

    interface multiplier
        procedure int_mult, real_mult, complex_mult
    end interface multiplier

    interface divider
        procedure int_div, real_div, complex_div
    end interface divider

contains
    ! Adder Functions
    function int_add(n_1, n_2) result(sum)
        integer, intent(in) :: n_1, n_2
        integer :: sum
        sum = n_1 + n_2
    end function int_add

    function real_add(n_1, n_2) result(sum)
        real, intent(in) :: n_1, n_2
        real :: sum
        sum = n_1 + n_2
    end function real_add

    function complex_add(n_1, n_2) result(sum)
        complex, intent(in) :: n_1, n_2
        complex :: sum
        sum = n_1 + n_2
    end function complex_add

    ! Subtractor Functions
    function int_sub(n_1, n_2) result(sub)
        integer, intent(in) :: n_1, n_2
        integer :: sub
        sub = n_1 - n_2
    end function int_sub

    function real_sub(n_1, n_2) result(sub)
        real, intent(in) :: n_1, n_2
        real :: sub
        sub = n_1 - n_2
    end function real_sub

    function complex_sub(n_1, n_2) result(sub)
        complex, intent(in) :: n_1, n_2
        complex :: sub
        sub = n_1 - n_2
    end function complex_sub

    ! Multiplier Functions
    function int_mult(n_1, n_2) result(mult)
        integer, intent(in) :: n_1, n_2
        integer :: mult
        mult = n_1 * n_2
    end function int_mult

    function real_mult(n_1, n_2) result(mult)
        real, intent(in) :: n_1, n_2
        real :: mult
        mult = n_1 * n_2
    end function real_mult

    function complex_mult(n_1, n_2) result(mult)
        complex, intent(in) :: n_1, n_2
        complex :: mult
        mult = n_1 * n_2
    end function complex_mult

    ! Divider Functions
    function int_div(n_1, n_2) result(div)
        integer, intent(in) :: n_1, n_2
        integer :: div
        if ( n_2 == 0 ) then
            print "(a20)", "Zero division error!"
        else
            div = n_1 / n_2
        end if
    end function int_div

    function real_div(n_1, n_2) result(div)
        real, intent(in) :: n_1, n_2
        real :: div
        if ( n_2 == 0.0 ) then
            print "(a20)", "Zero division error!"
        else
            div = n_1 / n_2
        end if
    end function real_div

    function complex_div(n_1, n_2) result(div)
        complex, intent(in) :: n_1, n_2
        complex :: div
        div = n_1 / n_2
    end function complex_div
end module arithmetic_mod
