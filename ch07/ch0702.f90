program ch0702
    ! Two Dimensional Arrays and a Map
    implicit none

    integer, parameter :: n = 3
    integer :: lat, long
    real, dimension(1:n,1:n) :: height
    real, parameter :: correct = 10.

    do lat = 1, n
        do long = 1, n
            print *, ' type in value at ', lat, ' ', &
                long
            read *, height(lat,long)
            height(lat,long) = height(lat,long)+correct
        end do
    end do
    print *, ' Corrected data is '
    do lat = 1, n
        do long = 1, n
            print *, height(lat,long)
        end do
    end do
end program
