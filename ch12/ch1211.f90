program ch1211
    ! Stirling's Approximation
    implicit none

    real :: result, n, r

    print *, 'type in n and r'
    read *, n, r
    result = stirling(n)/(stirling(r)*stirling(n-r))
    print *, result
contains
    real function stirling(x)
        real, intent(in) :: x
        real, parameter :: pi = 3.1415927, &
            e = 2.7182828

        stirling = sqrt(2.*pi*x)*(x/e)**x
    end function
end program
