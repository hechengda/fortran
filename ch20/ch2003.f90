module matrix_module

    contains
    subroutine matrix_bits(a, b, c, a_t, n)
        implicit none

        integer, intent(in) :: n
        real, dimension(:,:), intent(in) :: a, b
        real, dimension(:,:), intent(out) :: c, a_t
        integer :: i, j, k

        do i = 1, n
            do j = 1, n
                c(i,j) = 0.
                do k = 1, n
                    c(i,j) = c(i,j)+a(i,k)*b(k,j)
                end do
            end do
        end do

        do i = 1, n
            do j = 1, n
                a_t(i,j) = a(j,i)
            end do
        end do
    end subroutine
end module

program ch2003
    ! Rank 2 and Higher Arrays as Parameters
    use matrix_module
    implicit none

    real, allocatable, dimension(:,:) :: one, &
        two, three, one_t
    integer :: i, n

    print *, 'input size of matrices'
    read *, n

    allocate(one(1:n,1:n))
    allocate(two(1:n,1:n))
    allocate(three(1:n,1:n))
    allocate(one_t(1:n,1:n))

    do i = 1, n
        print *, 'input row ', i, ' of one'
        read *, one(i,1:n)
    end do
    do i = 1, n
        print *, 'input row ', i, ' of two'
        read *, two(i,1:n)
    end do

    call matrix_bits(one,two,three,one_t,n)
    print *, ' matrix three:'
    do i = 1, n
        print *, three(i, 1:n)
    end do
    print *, ' matrix one_t:'
    do i = 1, n
        print *, one_t(i, 1:n)
    end do
end program
