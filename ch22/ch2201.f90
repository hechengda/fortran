module link_module
    type link
        character :: x
        type(link), pointer :: next => null()
    end type
end module

program ch2201
    ! Singly Linked List: Reading an Unknown &
    ! Amount of Text
    use link_module
    implicit none

    character(80) :: fname
    integer :: io_stat_number = 0
    type(link), pointer :: root, current
    integer :: n, i = 0
    character(:), allocatable :: string

    print *, ' Type in the file name ? '
    read '(a)', fname
    open(1,file=fname,status='old')

    allocate(root)
    ! read first data item
    read(1,'(a)',advance='no',&
        iostat=io_stat_number) root%x
    if (io_stat_number/=-1) then
        i = i+1
        allocate(root%next)
    end if
    current => root

    ! read the rest
    do while (associated(current%next))
        current => current%next
        read(1,'(a)',advance='no',&
            iostat=io_stat_number) current%x
        if (io_stat_number/=-1) then
            i = i+1
            allocate(current%next)
        end if
    end do

    print *, i, ' characters read'
    close(1)

    n = i
    allocate(character(n)::string)
    i = 0
    current => root
    do while (associated(current%next))
        i = i+1
        string(i:i) = current%x
        current => current%next
    end do
    print *, 'data read was:'
    print *, string
end program
