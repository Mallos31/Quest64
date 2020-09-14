void func_12928(s32 arg0) {
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_t8;
    u16 temp_v1;
    void *phi_s0;
    s32 phi_s1;

    temp_s1 = *(void *)0x800869A0;
    if (temp_s1 != 0) {
        phi_s0 = (void *)0x800862E0;
        phi_s1 = temp_s1;
loop_2:
        temp_v1 = phi_s0->unk60;
        if ((temp_v1 & 0x8000) != 0) {
            temp_t8 = ((temp_v1 & 0xFFFF7FFF) - 1) & 0xFFFF;
            if (temp_t8 == 0) {
                phi_s0->unk60 = (u16)0U;
                func_0001D8B0(phi_s0, 3, 1, 3, 1, 1);
            } else {
                phi_s0->unk60 = (u16) (temp_t8 | 0x8000);
            }
        }
        func_0001DB38(0, phi_s0, (phi_s0->unk52 * 0xC) + 0x8010FDC4, arg0);
        func_0001E0AC(phi_s0->unk58, phi_s0, (phi_s0->unk52 * 0xC) + 0x8010FDC4);
        func_00011860(phi_s0->unk0, phi_s0->unk4, phi_s0->unk8, phi_s0->unk2C, phi_s0->unk30, phi_s0->unk34, 6.0f);
        temp_s1_2 = phi_s1 - 1;
        phi_s0 = phi_s0 + 0x6C;
        phi_s1 = temp_s1_2;
        if (temp_s1_2 != 0) {
            goto loop_2;
        }
    }
}
