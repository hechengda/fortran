module read_data_module

    contains
    subroutine read_data(file_name, raw_data, how_many)
        implicit none

        character(*), intent(in) :: file_name
        integer, intent(in) :: how_many
        real, dimension(:), allocatable, &
            intent(out) :: raw_data
        integer :: i

        allocate(raw_data(how_many))
        open(1,file=file_name,status='old')
        do i = 1, how_many
            read(1,*) raw_data(i)
        end do
        close(1)
    end subroutine
end module

module sort_data_module

    contains
    subroutine sort_data(raw_data, how_many)
        implicit none

        integer, intent(in) :: how_many
        real, dimension(:), intent(inout) :: raw_data

        call quicksort(1,how_many)

        contains
        recursive subroutine quicksort(l, r)
            implicit none

            integer, intent(in) :: l, r
            integer :: i, j
            real :: v, t

            i = l
            j = r
            v = raw_data(int((l+r)/2))
            do
                do while (raw_data(i)<v)
                    i = i+1
                end do
                do while (v<raw_data(j))
                    j = j-1
                end do
                if (i<=j) then
                    t = raw_data(i)
                    raw_data(i) = raw_data(j)
                    raw_data(j) = t
                    i = i+1
                    j = j-1
                end if
                if (i>j) exit
            end do
            if (l<j) then
                call quicksort(l,j)
            end if
            if (i<r) then
                call quicksort(i,r)
            end if
        end subroutine
    end subroutine
end module

module print_data_module

    contains
    subroutine  print_data(raw_data, how_many)
        implicit none

        integer, intent(in) :: how_many
        real, dimension(:), intent(in) :: raw_data
        integer :: i

        open(2,file='sorted.txt')
        do i = 1, how_many
            write(2,*) raw_data(i)
        end do
        close(2)
    end subroutine
end module

program ch2006
    ! Allocatable Dummy Arrays
    use read_data_module
    use sort_data_module
    use print_data_module
    implicit none

    integer :: how_many
    character(20) :: file_name
    real, dimension(:), allocatable :: raw_data

    print *, ' how many data items are there?'
    read *, how_many
    print *, ' what is the file name?'
    read '(a)', file_name
    call read_data(file_name,raw_data,how_many)
    print *, ' allocate and read'
    call sort_data(raw_data,how_many)
    print *, ' sort'
    call print_data(raw_data,how_many)
    print *, ' print'
    print *, ' '
    print *, ' data written to file sorted.txt'
end program
