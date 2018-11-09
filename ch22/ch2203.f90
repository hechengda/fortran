module ragged_module
    implicit none

    type ragged
        real, dimension(:), allocatable :: &
            ragged_row
    end type
end module

program ch2203
    ! Ragged Arrays
    use ragged_module
    implicit none

    integer, parameter :: n = 3
    integer :: i
    type(ragged), dimension(1:n) :: lower_diag

    do i = 1, n
        allocate(lower_diag(i)%ragged_row(1:i))
        print *, ' type in the values for row ', i
        read *, lower_diag(i)%ragged_row
    end do
    do i = 1, n
        print *, lower_diag(i)%ragged_row
    end do
end program
