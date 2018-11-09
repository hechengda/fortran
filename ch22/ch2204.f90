module ragged_module
    implicit none

    type ragged
        real, dimension(:), allocatable :: &
            rainfall
    end type
end module

program ch2204
    ! Ragged Arrays and Variable Sized Data &
    ! Sets
    use ragged_module
    implicit none

    integer :: i
    integer :: nr
    integer, dimension(:), allocatable :: nc
    type(ragged), dimension(:), allocatable :: &
        station

    print *, ' enter number of stations'
    read *, nr
    allocate(nc(1:nr))
    allocate(station(1:nr))
    do i = 1, nr
        print *, ' enter the number of data values ', &
            'for station ', i
        read *, nc(i)
        allocate(station(i)%rainfall(1:nc(i)))
        if (nc(i)==0) cycle
        print *, ' Type in the values for station ', i
        read *, station(i)%rainfall(1:nc(i))
    end do
    print *, '  Row    N    Data'
    do i = 1, nr
        print 100, i, nc(i), station(i)%rainfall(1:nc(i))
    end do

100 format (3x, i3, 2x, i3, 2x, 12(1x,f6.2))
end program
