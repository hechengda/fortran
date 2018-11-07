module address_module

    type address
        character(40) :: name
        character(60) :: street
        character(60) :: district
        character(60) :: city
        character(8) :: post_code
    end type

end module

program ch1703
    ! Address Lists
    use address_module
    implicit none

    integer :: n
    type(address), allocatable, dimension(:) :: addr
    integer :: i

    print *, ' input number of addresses'
    read *, n
    allocate(addr(1:n))
    open(1,file='address.txt',status='old')

    do i = 1, n
        read(1,'(a40)') addr(i)%name
        read(1,'(a60)') addr(i)%street
        read(1,'(a60)') addr(i)%district
        read(1,'(a60)') addr(i)%city
        read(1,'(a8)') addr(i)%post_code
    end do

    do i = 1, n
        print *, addr(i)%name
        print *, addr(i)%street
        print *, addr(i)%district
        print *, addr(i)%city
        print *, addr(i)%post_code
    end do
end program
