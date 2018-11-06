program ch0510
    ! Using the Numeric Inquiry Functions with Real Types
    implicit none

    real :: r
    integer, parameter :: sp = selected_real_kind(6,37)
    integer, parameter :: dp = selected_real_kind(15,307)
    integer, parameter :: qp = selected_real_kind(30,291)
    real(sp) :: rsp
    real(dp) :: rdp
    real(qp) :: rqp

    print *, ' ====================='
    print *, ' Real kind information'
    print *, ' ====================='
    print *, ' kind number'
    print *, ' ', kind(r), ' ', kind(rsp), ' ', &
        kind(rdp), ' ', kind(rqp)

    print *, ' digits details'
    print *, ' ', digits(r), ' ', digits(rsp), &
        ' ', digits(rdp), ' ', digits(rqp)

    print *, ' epsilon details'
    print *, ' ', epsilon(r)
    print *, ' ', epsilon(rsp)
    print *, ' ', epsilon(rdp)
    print *, ' ', epsilon(rqp)

    print *, ' huge value'
    print *, ' ', huge(r)
    print *, ' ', huge(rsp)
    print *, ' ', huge(rdp)
    print *, ' ', huge(rqp)

    print *, ' maxexponent value'
    print *, ' ', maxexponent(r)
    print *, ' ', maxexponent(rsp)
    print *, ' ', maxexponent(rdp)
    print *, ' ', maxexponent(rqp)

    print *, ' minexponent value'
    print *, ' ', minexponent(r)
    print *, ' ', minexponent(rsp)
    print *, ' ', minexponent(rdp)
    print *, ' ', minexponent(rqp)

    print *, ' precision details'
    print *, ' ', precision(r), ' ', &
        precision(rsp), ' ', precision(rdp), ' ', &
        precision(rqp)

    print *, ' radix details'
    print *, ' ', radix(r), ' ', radix(rsp), &
        ' ', radix(rdp), ' ', radix(rqp)

    print *, ' range details'
    print *, ' ', range(r), ' ', range(rsp), &
        ' ', range(rdp), ' ', range(rqp)

    print *, ' tiny details'
    print *, ' ', tiny(r)
    print *, ' ', tiny(rsp)
    print *, ' ', tiny(rdp)
    print *, ' ', tiny(rqp)
end program
