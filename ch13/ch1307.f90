program ch1307
    ! Wave Breaking on an Offshore Reef
    implicit none

    real :: hr, hlow, high, half, xl
    real :: xh, xm, d
    real, parameter :: tol = 1.e-6
    print *, ' Give reformed wave height, &
        &and water depth'
    read *, hr, d

    hlow = hr
    high = hlow*2.
    xl = f(hlow,hr,d)
    xh = f(high,hr,d)

    do while ((xl*xh)>=0.)
        high = high*2.
        xh = f(high,hr,d)
    end do

    do
        half = (hlow+high)*.5
        xm = f(half,hr,d)
        if ((xl*xm)<0.) then
            xh = xm
            high = half
        else
            xl = xm
            hlow = half
        end if
        if (abs(high-hlow)<=tol) exit
    end do
    print *, ' Incident Wave Height Lies Between'
    print *, hlow, ' and ', high, ' metres'
contains
    real function f(a, b, c)
        implicit none

        real, intent(in) :: a, b, c

        f = a*(1.-.8*exp(-.6*c/a))-b
    end function
end program
