s32 func_c130(void) {
    void *sp28;
    s32 temp_a0;
    s32 temp_a3;
    s32 temp_ret;
    s32 temp_ret_2;
    s32 temp_s0;
    s32 temp_v0;
    void *temp_v0_2;
    void *temp_v1;
    void *phi_v1;
    s32 phi_s0;
    s32 phi_return;

    *(void *)0x8007D1A0 = 0;
    temp_v0 = *(void *)0x80084EE4;
    phi_v1 = (void *)0x803A9AD0;
    phi_s0 = 0;
loop_1:
    if ((temp_v0 == phi_v1->unk0) && (*(void *)0x80084EE8 == phi_v1->unk2)) {
        sp28 = phi_v1;
        temp_ret_2 = func_0000B9D8(phi_s0, 8);
        temp_v1 = phi_v1;
        phi_return = temp_ret_2;
        if (temp_ret_2 == 0) {
            temp_v0_2 = (temp_v1->unk4 * 8) + 0x803A9A90;
            temp_a0 = temp_v0_2->unk0;
            temp_a3 = temp_v0_2->unk4;
            sp28 = temp_v1;
            func_00024260(temp_a0, 0x802A7BC0, temp_a3 - temp_a0, temp_a3);
            temp_ret = func_0000B7DC(phi_s0, temp_v1->unkC, temp_v1->unk10, temp_v1->unk14, 0x8007D1A8);
            *(void *)0x8007D1A0 = (s32) (phi_s0 + 1);
            return temp_ret;
        }
    } else {
        temp_s0 = phi_s0 + 1;
        phi_v1 = phi_v1 + 0x18;
        phi_s0 = temp_s0;
        phi_return = temp_v0;
        if (temp_s0 != 8) {
            goto loop_1;
        }
    }
    return phi_return;
}
