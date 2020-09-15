s32 func_18fc4(void *arg0, void *arg1) {
    s32 temp_a0;
    s32 temp_v1;
    void *temp_a2;
    void *temp_a2_2;
    s32 phi_v1;
    s32 phi_v1_2;
    s32 phi_v0;

    temp_a2 = arg0;
    if ((temp_a2->unkA & 4) != 0) {
        phi_v1 = 2;
    } else {
        arg0 = temp_a2;
        temp_a2_2 = arg0;
        temp_v1 = func_00022FD0(0x64, temp_a2) < (u32) temp_a2_2->unk2C->unkE;
        phi_v1 = temp_v1;
        if (temp_v1 != 0) {
            temp_a0 = temp_a2_2->unk24;
            phi_v1_2 = temp_v1;
            if (arg1 != temp_a0) {
                if ((arg1->unk5E & 1) != 0) {
                    arg0 = temp_a2_2;
                    phi_v0 = func_00006A74(func_0000B140(arg1, arg1, temp_a2_2), arg0->unk24, arg0);
                } else {
                    phi_v0 = func_0000ABF4(temp_a0, arg1, temp_a2_2);
                }
                phi_v1_2 = phi_v0;
            }
            phi_v1 = phi_v1_2 + 1;
        }
    }
    return ((phi_v1 * 4) + 0x80050000)->unk-321C;
}
