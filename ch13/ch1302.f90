program ch1302
    ! Date Calculation
    implicit none

    integer :: year, month, day
    integer :: n, t

    print *, 'year, followed by day within year'
    read *, year, n
    if (mod(year,4)/=0) then
        t = 0
    elseif (mod(year,100)/=0) then
        t = 1
    elseif (mod(year,400)/=0) then
        t = 0
    else
        t = 1
    end if
    if (n>59+t) then
        day = n+2-t
    else
        day = n
    end if
    month = (day+91)*100/3055
    day = (day+91)-(month*3055)/100
    month = month-2
    print *, 'calendar date is ', day, month, year
end program
