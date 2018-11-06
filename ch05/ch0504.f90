program ch0504
    implicit none

    real :: light_minute, distance, elapse
    integer :: minute, second
    real, parameter :: light_year = 9.46*10.**12

    light_minute = light_year/(365.25*24.*60.)
    distance = 150.*10.**6
    elapse = distance/light_minute
    minute = elapse
    second = (elapse-minute)*60.
    print *, ' Light takes ', minute, ' Minutes'
    print *, ' ', second, ' Seconds'
    print *, ' To reach the earth from the sun'
end program
