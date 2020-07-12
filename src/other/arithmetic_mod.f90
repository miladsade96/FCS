module arithmetic_mod
    implicit none
    private
    public :: adder, subtractor, multiplier, divider

    interface adder
        procedure int_add, real_add, complex_add
    end interface adder
end module arithmetic_mod
