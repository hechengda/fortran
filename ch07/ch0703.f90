program ch0703
    ! Sensible Tabular Output
    implicit none

    integer, parameter :: n = 3
    integer :: lat, long
    real, dimension(1:n,1:n) :: height
    real, parameter :: correct = 10.

    do lat = 1, n
        do long = 1, n
            read *, height(lat,long)
            height(lat,long) = height(lat,long)+correct
        end do
    end do
    do lat = 1, n
        print *, (height(lat,long), long = 1, n)
    end do
end program
