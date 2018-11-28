module sparse_vector_module
    implicit none

    type sparse_vector
        integer :: index
        real :: value
        type(sparse_vector), pointer :: next => null()
    end type
end module

module read_data_module
contains
    subroutine read_data(filename, root_z, ifail)
        use sparse_vector_module
        implicit none

        character(*), intent(in) :: filename
        type(sparse_vector), pointer, intent(out) :: root_z
        integer, intent(out) :: ifail
        integer :: io_status
        type(sparse_vector), pointer :: current_z

        ifail = 0
        open(1,file=filename,status='old',iostat=io_status)
        if (io_status/=0) then
            ifail = 1
            return
        end if

        allocate(root_z)
        read(1,*,iostat=io_status) root_z%value, root_z%index
        if (io_status/=0) then
            ifail = 2
            return
        end if

        current_z => root_z
        allocate(current_z%next)
        do while (associated(current_z%next))
            current_z => current_z%next
            read(1,*,iostat=io_status) current_z%value, current_z%index
            if (io_status==0) then
                allocate(current_z%next)
                cycle
            elseif (io_status>0) then
                ifail = 3
            end if
        end do
        close(1)
    end subroutine
end module

program ch2601
    ! Using Linked Lists for Sparse Matrix Problems
    use sparse_vector_module
    use read_data_module
    implicit none

    character(30) :: filename
    type(sparse_vector), pointer :: root_x, &
        current_x, root_y, current_y
    real :: inner_prod = 0.
    integer :: ifail = 0

    print *, 'input file name for vector x'
    read '(a)', filename

    call read_data(filename,root_x,ifail)
    select case (ifail)
        case (1)
            print *, 'error opening file ', filename
            stop 10
        case (2)
            print *, 'error reading from beginning of file ', filename
            stop 20
        case (3)
            print *, 'error reading from file ', filename
            stop 30
        case default
    end select

    print *, 'input file name for vector y'
    read '(a)', filename

    call read_data(filename,root_y,ifail)
    select case (ifail)
        case (1)
            print *, 'error opening file ', filename
            stop 40
        case (2)
            print *, 'error reading from beginning of file ', filename
            stop 50
        case (3)
            print *, 'error reading from file ', filename
            stop 60
        case default
    end select

    current_x => root_x
    current_y => root_y
    do while (associated(current_x%next))
        do while (associated(current_y%next) .and. &
            current_y%index<current_x%index)
            current_y => current_y%next
        end do

        if (current_y%index==current_x%index) then
            inner_prod = inner_prod+current_x%value*current_y%value
        end if
        current_x => current_x%next
    end do

    print *, 'non-zero values of vector x and indices:'
    current_x => root_x
    do while (associated(current_x%next))
        print *, current_x%value, current_x%index
        current_x => current_x%next
    end do

    print *, 'non-zero values of vector y and indices:'
    current_y => root_y
    do while (associated(current_y%next))
        print *, current_y%value, current_y%index
        current_y => current_y%next
    end do

    print *, 'inner product of two sparse vectors is :', &
        inner_prod
end program
