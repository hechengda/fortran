module statistics_module

    contains
    subroutine stats(x, n, mean, std_dev)
        implicit none

        integer, intent(in) :: n
        real, dimension(:), intent(in) :: x
        real, intent(out) :: mean, std_dev
        real :: variance
        real :: sumxi, sumxi2
        integer :: i

        variance = 0.
        sumxi = 0.
        sumxi2 = 0.
        do i = 1, n
            sumxi = sumxi+x(i)
            sumxi2 = sumxi2+x(i)*x(i)
        end do
        mean = sumxi/n
        variance = (sumxi2-sumxi*sumxi/n)/(n-1)
        std_dev = sqrt(variance)
    end subroutine
end module

program ch2001
    ! Assumed Shape Parameter Passing
    use statistics_module
    implicit none

    integer, parameter :: n = 10
    real, dimension(1:n) :: x
    real, dimension(-4:5) :: y
    real, dimension(10) :: z
    real, dimension(:), allocatable :: t
    real :: m, sd
    integer :: i

    do i = 1, n
        x(i) = real(i)
    end do
    call stats(x,n,m,sd)
    print *, ' x'
    print 100, m, sd

    y = x
    call stats(y,n,m,sd)
    print *, ' y'
    print 100, m, sd

    z = x
    call stats(z,n,m,sd)
    print *, ' z'
    print 100, m, sd

    allocate(t(n))
    t = x
    call stats(t,n,m,sd)
    print *, ' t'
    print 100, m, sd

100 format (' Mean = ', f7.3, ' Std Dev = ', f7.3)
end program
