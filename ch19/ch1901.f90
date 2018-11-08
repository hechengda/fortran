module interact_module

    contains
    subroutine interact(a, b, c, ok)
        implicit none

        real, intent(out) :: a, b, c
        logical, intent(out) :: ok
        integer :: io_status = 0

        print *, &
            ' type in the coefficients a, b and c'
        read(*,*,iostat=io_status) a, b, c

        ok = io_status==0
    end subroutine
end module

module solve_module

    contains
    subroutine solve(e, f, g, root1, root2, ifail)
        implicit none

        real, intent(in) :: e, f, g
        real, intent(out) :: root1, root2
        integer, intent(inout) :: ifail
        real :: term, a2

        term = f*f-4.*e*g
        a2 = e*2.
        if (term<0.) then
            ifail = 1
        else
            term = sqrt(term)
            root1 = (-f+term)/a2
            root2 = (-f-term)/a2
        end if
    end subroutine
end module

program ch1901
    ! Roots of a Quadratic Equation
    use interact_module
    use solve_module
    implicit none

    real :: p, q, r, root1, root2
    integer :: ifail = 0
    logical :: ok = .true.

    call interact(p,q,r,ok)
    if (ok) then
        call solve(p,q,r,root1,root2,ifail)
        if (ifail==1) then
            print *, ' complex roots'
            print *, ' calculation abandoned'
        else
            print *, ' roots are ', root1, ' ', root2
        end if
    else
        print *, ' error in data input program ends'
    end if
end program
