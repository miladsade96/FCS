program quick_sort
    interface
        ! declaring qs subroutine inside interface
        recursive subroutine qs(seq, first, last)
            integer, dimension(:), intent(inout) :: seq
            integer, intent(in) :: first, last
        end subroutine qs
    end interface
end program quick_sort