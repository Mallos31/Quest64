s32 func(void) {
    s32 temp_fp;
    s32 temp_gp;
    s32 temp_ret;
    s32 temp_v0;
    u32 phi_v1;
    s32 phi_gp;
    s32 phi_fp;
    s32 phi_return;
    s32 phi_v0;
    s32 phi_v0_2;

    temp_ret = func_04000A40(2);
    phi_fp = 0;
    phi_v0 = temp_ret;
    phi_return = temp_ret;
loop_1:
    saved_reg_s4->unk4 = -1U;
    saved_reg_s4->unk0 = -1U;
    saved_reg_s4->unk0 = -1U;
    phi_v1 = (u32) saved_reg_s4->unk4 >> 0x10;
    phi_gp = 0;
loop_2:
    phi_v0_2 = phi_v0;
    if ((phi_v1 & 1) != 0) {
        temp_v0 = phi_v0 + 1;
        phi_return = temp_v0;
        phi_v0_2 = temp_v0;
    }
    temp_gp = phi_gp + 1;
    phi_v1 = phi_v1 >> 1;
    phi_gp = temp_gp;
    phi_v0 = phi_v0_2;
    if (temp_gp < 8) {
        goto loop_2;
    }
    temp_fp = phi_fp + 1;
    phi_fp = temp_fp;
    phi_v0 = phi_v0_2;
    if (temp_fp < 0xA) {
        goto loop_1;
    }
    return phi_return;
}
