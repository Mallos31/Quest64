s32 func_800398D0(void *arg0) {
    return ((arg0->unk3C * 0x30) + arg0->unk40)->unk28;
}

s32 func_800398F0(void *arg0) {
    s32 sp24;
    s16 sp20;
    s32 temp_v0;
    s32 phi_return;

    temp_v0 = arg0->unk40;
    phi_return = temp_v0;
    if (((arg0->unk3C * 0x30) + temp_v0)->unk28 == 0) {
        sp20 = (u16)0;
        sp24 = (arg0->unk3C * 0x30) + temp_v0;
        phi_return = func_8003FE6C(arg0 + 0x14, &sp20, 0);
    }
    return phi_return;
}
