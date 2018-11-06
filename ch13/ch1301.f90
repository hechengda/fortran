program ch1301
    ! Quadratic Roots
    implicit none

    real :: a, b, c
    real :: term, a2
    real :: root1, root2

    print *, 'give the coefficients a, b and c'
    read *, a, b, c
    term = b*b - 4.*a*c
    a2 = a*2.
    if (term<0.) then
        print *, 'roots are complex'
    elseif (term>0.) then
        term = sqrt(term)
        root1 = (-b+term)/a2
        root2 = (-b-term)/a2
        print *, 'roots are ', root1, ' and ', root2
    else
        root1 = -b/a2
        print *, 'roots are equal, at ', root1
    end if
end program
