void *func_19f54(s32 arg0, ?32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5) {
    s32 temp_v1;
    void *temp_v0;
    s32 phi_v1;
    void *phi_v0;
    void *phi_v0_2;
    void *phi_return;

    phi_v1 = 7;
    phi_v0 = (void *)0x800874E8;
    phi_v0_2 = (void *)0x800874E8;
    phi_return = (void *)0x800874E8;
    if (*(void *)0x800874E8 != 0) {
loop_1:
        temp_v1 = phi_v1 - 1;
        temp_v0 = phi_v0 + 0x18;
        phi_v0_2 = temp_v0;
        phi_return = temp_v0;
        if (temp_v1 != 0) {
            phi_v1 = temp_v1;
            phi_v0 = temp_v0;
            phi_v0_2 = temp_v0;
            phi_return = temp_v0;
            if (*temp_v0 != 0) {
                goto loop_1;
            }
        }
    }
    phi_v0_2->unk0 = arg1;
    phi_v0_2->unk4 = arg0;
    phi_v0_2->unk8 = arg2;
    phi_v0_2->unkC = arg3;
    phi_v0_2->unk10 = arg4;
    phi_v0_2->unk14 = arg5;
    return phi_return;
}
