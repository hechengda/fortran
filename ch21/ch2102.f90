module data_module

    implicit none
    integer, parameter :: n = 12
    real, dimension(n) :: rainfall
    real, dimension(n) :: sorted

contains
    subroutine readdata
        implicit none
        integer :: i
        character(40) :: filename

        print *, ' What is the filename ?'
        read '(a)', filename
        open(1,file=filename,status='old')
        do i = 1, n
            read(1,*) rainfall(i)
        end do
        close(1)
    end subroutine readdata

    subroutine sortdata
        implicit none
        sorted = rainfall
        call selection

    contains
        subroutine selection
            implicit none
            integer :: i, j, k
            real :: minimum

            do i = 1, n-1
                k = i
                minimum = sorted(k)
                do j = i, n
                    if (sorted(j)<minimum) then
                        k = j
                        minimum = sorted(k)
                    end if
                end do
                sorted(k) = sorted(i)
                sorted(i) = minimum
            end do
        end subroutine selection
    end subroutine sortdata

    subroutine printdata
        implicit none
        integer :: i

        print *, ' original data is '
        do i = 1, n
            print 100, rainfall(i)
        end do
        print *, ' Sorted data is '
        do i = 1, n
            print 100, sorted(i)
        end do

    100 format (1x, f7.1)
    end subroutine printdata
end module

program ch2102
    ! Modules for Globally Sharing Data
    use data_module

    call readdata
    call sortdata
    call printdata
end program
