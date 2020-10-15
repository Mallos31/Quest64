s32 func_80036360(s32 arg2) {
    return func_8003FB20() + arg2;
}

s32 func_80036384(s32 arg0, s32 arg1, ? arg2, ? arg3) {
    s32 temp_v0;

    temp_v0 = func_8003F4D0(0x80036360, arg0, arg1, &arg2);
    if (temp_v0 >= 0) {
        *(arg0 + temp_v0) = (u8)0;
    }
    return temp_v0;
}
