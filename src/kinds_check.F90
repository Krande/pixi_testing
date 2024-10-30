program kind_check
    implicit none
    integer, parameter :: i1 = selected_int_kind(1)
    integer, parameter :: i2 = selected_int_kind(2)
    integer, parameter :: i4 = selected_int_kind(9)
    integer, parameter :: i8 = selected_int_kind(18)
    real, parameter :: r4 = selected_real_kind(6)
    real, parameter :: r8 = selected_real_kind(15)
    real, parameter :: r16 = selected_real_kind(33)

    print *, "Integer kinds: ", i1, i2, i4, i8
    print *, "Real kinds: ", r4, r8, r16
end program kind_check