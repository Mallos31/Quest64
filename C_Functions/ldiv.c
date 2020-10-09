void *ldiv(void *ldiv_result, s32 number, s32 denom) {
    s32 sp4;
    s32 sp0;
    s32 quotient;
    s32 remainder;

    quotient = number / denom;
    sp0 = quotient;
    remainder = number - (denom * quotient);
    sp4 = remainder;
    if (quotient < 0) {
        sp0 = quotient;
        sp4 = remainder;
        if (remainder > 0) {
            sp4 = remainder - denom;
            sp0 = quotient + 1;
        }
    }
    ldiv_result->unk0 = (s32) sp->unk0;
    ldiv_result->unk4 = (s32) sp->unk4;
    return ldiv_result;
}
