module md_module
contains
    subroutine matrix_diagonal(a, diag, n)
        implicit none
        real, dimension(:,:), intent(in) :: a
        real, dimension(:), intent(out) :: diag
        integer, intent(in) :: n
        real, dimension(1:size(a)) :: tmp

        tmp = pack(a,.true.)
        diag = tmp(1:n*n:n+1)
    end subroutine
end module

program ch2603
    ! A Subroutine to Extract the Diagonal
    ! Elements of a Matrix
    use md_module
    implicit none
    integer :: i, n
    real, allocatable, dimension(:,:) :: a
    real, allocatable, dimension(:) :: diag
    character(20) :: filename

    print *, 'input name of data file'
    read '(a)', filename
    open(1,file=filename)
    read(1,*) n
    allocate(a(1:n,1:n), diag(1:n))
    do i = 1, n
        read(1,*) a(i,1:n)
    end do
    call matrix_diagonal(a,diag,n)
    print *, ' diagonal elements of a are:'
    print *, diag
end program
