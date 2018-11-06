module reciprocal_module
    implicit none

    contains
    elemental real function reciprocal(x)
        implicit none

        real, intent(in) :: x

        reciprocal = 1./x
    end function
end module

program ch1213
    ! Elemental Functions
    use reciprocal_module
    implicit none

    real :: x = 10.
    real, dimension(1:5) :: y = [ 1., 2., 3., 4., 5. ]

    print *, 'reciprocal of x is ', reciprocal(x)
    print *, 'reciprocal of y is ', reciprocal(y)
end program
