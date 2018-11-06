program ch1002
    ! Reading Real Data
    implicit none

    integer, parameter :: n = 10
    real, dimension(1:n) :: h, w, bmi
    integer :: i

    open(100,file='ch1001.out',status='old')
    do i = 1, n
        read(100,'(1x,f5.2,2x,f4.1)') h(i), w(i)
    end do
    close(100)

    bmi = w/(h*h)
    do i = 1, n
        write(*,'(1x, f4.1)') bmi(i)
    end do
end program
