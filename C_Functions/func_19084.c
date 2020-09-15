s32 func_19084(void *arg0, void *arg1, s32 arg2) {
    s32 phi_v1;

    if ((arg0->unkA & 4) != 0) {
        phi_v1 = 1;
    } else {
        if (arg0->unk2C->unk18 == 2) {
            phi_v1 = 1;
        } else {
            if ((arg1->unk5E & 1) != 0) {
                phi_v1 = func_00022FD0(0x50) < (u32) (arg2 + 0x80050000)->unk-3210;
            } else {
                phi_v1 = func_00022FD0(0x20) < (u32) (arg2 + 0x80050000)->unk-3210;
            }
        }
    }
    return phi_v1;
}
