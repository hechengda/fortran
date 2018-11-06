module etox_module
    implicit none

    contains
    real function etox(x)
        implicit none

        real, intent(in) :: x
        real :: term
        integer :: n
        real, parameter :: tol = 1.e-6

        etox = 1.
        term = 1.
        n = 0
        do
            n = n+1
            term = term*(x/n)
            etox = etox+term
            if (abs(term)<=tol) exit
        end do
    end function
end module

program ch1306
    ! The Evaluation of e**x
    use etox_module
    implicit none

    real, parameter :: x = 1.
    real :: y

    print *, 'Fortran intrinsic ', exp(x)
    y = etox(x)
    print *, 'User defined etox ', y
end program
