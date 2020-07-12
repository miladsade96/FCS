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

end module arithmetic_mod
