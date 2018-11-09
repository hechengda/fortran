module link_module
    type link
        real :: x
        type(link), pointer :: next => null()
    end type
end module

program ch2202
    ! Reading in an Arbitrary Number of Reals &
    ! Using a Linked List and Copying to an Array
    use link_module
    implicit none

    character(80) :: fname
    integer :: io_stat_number = 0
    type(link), pointer :: root, current
    integer :: n, i = 0
    real, dimension(:), allocatable :: y

    print *, ' Type in the file name ? '
    read '(a)', fname
    open(1,file=fname,status='old')

    allocate(root)
    ! read first data item
    read(1,*,iostat=io_stat_number) root%x
    if (io_stat_number/=-1) then
        i = i+1
        allocate(root%next)
    end if
    current => root

    ! read the rest
    do while (associated(current%next))
        current => current%next
        read(1,*,iostat=io_stat_number) current%x
        if (io_stat_number/=-1) then
            i = i+1
            allocate(current%next)
        end if
    end do

    print *, i, ' numbers read'
    close(1)

    n = i
    allocate(y(n))
    i = 0
    current => root
    do while (associated(current%next))
        i = i+1
        y(i) = current%x
        current => current%next
    end do
    print *, 'data read was:'
    print *, y
end program
