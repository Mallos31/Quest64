void __osDequeueThread(void *arg0, void *arg1) {
    void *temp_a2;
    void *temp_a3;
    void *temp_a3_2;
    void *phi_a3;
    void *phi_a2;

    temp_a3 = *arg0;
    phi_a3 = temp_a3;
    phi_a2 = arg0;
    if (temp_a3 != 0) {
loop_1:
        if (phi_a3 == arg1) {
            *phi_a2 = (s32) *arg1;
            return;
        }
        temp_a2 = phi_a3;
        temp_a3_2 = *temp_a2;
        phi_a3 = temp_a3_2;
        phi_a2 = temp_a2;
        if (temp_a3_2 != 0) {
            goto loop_1;
        }
    }
}

s32 func_8003D550(void) {
    u32 sp1C;
    s32 sp18;
    s32 temp_v0;

    sp1C = 0U;
    if (*(void *)0x800954EC == 0xB0000000) {

    } else {
        *(void *)0x800954E4 = (u8)0;
        *(void *)0x800954EC = 0xB0000000;
        func_8003D3D0(0, &sp1C);
        *(void *)0x800954E5 = (s8) (sp1C & 0xFF);
        *(void *)0x800954E8 = (s8) ((sp1C >> 8) & 0xFF);
        *(void *)0x800954E6 = (s8) ((sp1C >> 0x10) & 0xF);
        *(void *)0x800954E7 = (s8) ((sp1C >> 0x14) & 0xF);
        *(void *)0x800954E9 = (u8)0;
        *(void *)0x800954F0 = 0;
        bzero(0x800954F4, 0x60);
        temp_v0 = __osDisableInt();
        *(void *)0x800954E0 = (s32) *(void *)0x8006F43C;
        sp18 = temp_v0;
        *(void *)0x8006F43C = 0x800954E0;
        __osRestoreInt(sp18);
    }
    return 0x80090000 + 0x54E0;
}
