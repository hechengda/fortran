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

program ch2005
    ! Recursive Subroutines - Quicksort
    use sort_data_module
    implicit none

    integer, parameter :: n = 10000
    real, dimension(:), allocatable :: x

    print *, ' Program starts'
    allocate(x(n))
    call random_number(x)
    call sort_data(x,n)
    print *, ' First 10 sorted numbers are'
    write(*,120) x(1:10)
    deallocate(x)
    print *, ' Program terminates'

120 format (2x, e14.6)
end program
