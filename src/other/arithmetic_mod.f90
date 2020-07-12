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

end module arithmetic_mod
