program ch0802
    ! Rank 2 Whole Arrays in Fortran
    implicit none

    integer, parameter :: n = 5
    real, dimension(1:n,1:n) :: fahrenheit, celsius
    integer :: lat, long

    do lat = 1, n
        print *, ' For Latitude= ', lat
        do long = 1, n
            print *, ' For Longitude', long
            read *, fahrenheit(lat,long)
        end do
    end do
    ! read *, fahrenheit
    celsius = 5./9.*(fahrenheit-32.)
    print *, fahrenheit
    print *, celsius
end program
