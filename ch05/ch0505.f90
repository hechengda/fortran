program ch0505
    ! Relative and Absolute Error
    implicit none

    real :: p = 0.4e-4, papprox = 0.41e-4
    real :: abs_error, rel_error
    integer :: i

    do i = 1, 3
        abs_error = abs(p-papprox)
        rel_error = abs(p-papprox)/abs(p)
        print 100, p, papprox
        print 110, abs_error, rel_error
        p = p*1.e5
        papprox = papprox*1.e5
    end do

100 format (' p       = ', e11.4, /, &
    'papprox = ', e11.4)
110 format (' abs error:', 12x, e11.4, /, &
    'rel error:', 12x, e11.4, /)
end program
