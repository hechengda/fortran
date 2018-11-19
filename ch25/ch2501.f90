include 'sort_data_module.f90'

program ch2501
    ! Sorting Reals and Integers
    use iso_fortran_env
    use sort_data_module
    implicit none

    integer, parameter :: n = 1000000
    real(real64), allocatable, dimension(:) :: x
    integer(int32), allocatable, dimension(:) :: y
    integer :: allocate_status = 0

    print *, ' Program starts'

    allocate(x(1:n),stat=allocate_status)
    if (allocate_status/=0) then
        print *, ' Allocate failed.'
        print *, ' Program terminates'
        stop 10
    end if
    print *, ' Real allocate complete'
    call random_number(x)
    print *, ' Real array initialised'
    call sort_data(x,n)
    print *, ' Real sort ended'
    print *, ' First 10 reals'
    write(*,100) x(1:10)

    allocate(y(1:n),stat=allocate_status)
    if (allocate_status/=0) then
        print *, ' Allocate failed.'
        print *, ' Program terminates'
        stop 20
    end if
    y = int(x*1000000)
    deallocate(x)
    print *, ' Integer array initialised'
    call sort_data(y,n)
    print *, ' Sort ended'
    print *, ' First 10 integers'
    write(*,110) y(1:10)
    deallocate(y)
    print *, ' Deallocate'
    print *, ' Program terminates'

100 format (5(2x,e14.6))
110 format (5(2x,i10))
end program
