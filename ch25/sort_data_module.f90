module sort_data_module
    interface sort_data
        ! We use only two types for example
        module procedure sort_real_dp
        module procedure sort_integer_32
    end interface

    contains
    subroutine sort_real_dp(raw_data, how_many)
        use iso_fortran_env, wp => real64
        implicit none

        integer, intent(in) :: how_many
        real(wp), dimension(:), intent(inout) :: raw_data

        call quicksort(1,how_many)

        contains
        recursive subroutine quicksort(l, r)
            implicit none

            integer, intent(in) :: l, r
            integer :: i, j
            real(wp) :: v, t

            include 'quicksort_include_code.f90'
        end subroutine
    end subroutine sort_real_dp

    subroutine sort_integer_32(raw_data, how_many)
        use iso_fortran_env, wp => int32
        implicit none

        integer, intent(in) :: how_many
        integer(wp), dimension(:), intent(inout) :: raw_data

        call quicksort(1,how_many)

        contains
        recursive subroutine quicksort(l, r)
            implicit none

            integer, intent(in) :: l, r
            integer :: i, j
            integer(wp) :: v, t

            include 'quicksort_include_code.f90'
        end subroutine
    end subroutine sort_integer_32
end module
