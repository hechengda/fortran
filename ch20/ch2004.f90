module statistics_module

    contains
    subroutine stats(x, n, mean, std_dev, median)
        implicit none

        integer, intent(in) :: n
        real, dimension(:), intent(in) :: x
        real, intent(out) :: mean, std_dev, median
        real, dimension (1:n) :: y
        real :: variance
        real :: sumxi, sumxi2

        sumxi = sum(x)
        sumxi2 = sum(x*x)
        mean = sumxi/n
        variance = (sumxi2-sumxi*sumxi/n)/(n-1)
        std_dev = sqrt(variance)
        y = x
        if (mod(n,2)==0) then
            median = (find(n/2)+find(n/2+1))/2
        else
            median = find(n/2+1)
        end if

        contains
        real function find(k)
            implicit none

            integer, intent(in) :: k
            integer :: lt, rt, i, j
            real :: t1, t2

            lt = 1
            rt = n
            do while (lt<rt)
                t1 = y(k)
                i = lt
                j = rt
                do
                    do while (y(i)<t1)
                        i = i+1
                    end do
                    do while (t1<y(j))
                        j = j-1
                    end do
                    if (i<=j) then
                        t2 = y(i)
                        y(i) = y(j)
                        y(j) = t2
                        i = i+1
                        j = j-1
                    end if
                    if (i>j) exit
                end do
                if (j<k) then
                    lt = i
                end if
                if (k<i) then
                    rt = j
                end if
            end do
            find = y(k)
        end function
    end subroutine
end module

program ch1204
    ! Automatic Arrays and Median Calculation
    use statistics_module
    implicit none

    integer :: n, i
    real, dimension(:), allocatable :: x
    real :: m, sd, median

    n = 10000
    do i = 1, 3
        print *, ' n = ', n
        allocate(x(n))
        call random_number(x)
        x = x*1000
        call stats(x,n,m,sd,median)

        print *, ' Mean = ', m
        print *, ' Standard deviation = ', sd
        print *, ' Median is = ', median

        n = n*10
        deallocate(x)
    end do
end program
