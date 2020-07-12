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

end module arithmetic_mod
