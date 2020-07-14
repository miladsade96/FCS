program mc
    implicit none
    ! declaring and initializing variables
    integer :: n = 1000 ! initial number of samples
    ! calling pi function until raaching upper bound
    do while(n <= 1000000000)
        print "(a19,i10,7x,a14,f9.7)", "Number of samples: ", n, "Estimated PI: ", pi(n)
        n = n * 10
    end do

contains
    ! pi value estimator function
    function pi(samples_num) result(pi_value)
        ! declaring input parameter
        integer, intent(in) :: samples_num
        ! declaring local vaariables
        real :: pi_value, length
        real, dimension(2) :: coordinates
        integer :: i, in_circle

        in_circle = 0
        do i = 1, samples_num
            call random_number(coordinates)
            coordinates = coordinates * 2 - 1
            length = sqrt(coordinates(1) * coordinates(1) + coordinates(2) * coordinates(2))
            if ( length <= 1 ) then
                in_circle = in_circle + 1
            end if
        end do
        pi_value = 4.0  * real(in_circle) / real(samples_num)
    end function pi
end program mc
