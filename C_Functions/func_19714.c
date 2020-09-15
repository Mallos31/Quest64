void *func_19714(void) {
    s32 temp_s1;
    s32 temp_s1_2;
    void *temp_ret;
    void *temp_t8;
    void *temp_v0;
    void *phi_s0;
    s32 phi_s1;
    void *phi_return;

    *(void *)0x80087208 = (s32) *(void *)0x80087200;
    phi_s0 = (void *)0x80087310;
    if (*(void *)0x8007B2F4 != 0) {
        phi_s0 = (void *)0x80087250;
    }
    temp_s1 = *(void *)0x80087208;
    phi_s1 = temp_s1;
    phi_return = (void *)0x80087208;
    if (temp_s1 != 0) {
loop_3:
        temp_v0 = phi_s0->unk0;
        temp_t8 = temp_v0 - 1;
        phi_return = temp_v0;
        if (temp_v0 != 0) {
            phi_s0->unk0 = temp_t8;
            phi_return = temp_v0;
            if (temp_t8 == 0) {
                *(void *)0x8004CEC4 = (f32) phi_s0->unk4;
                *(void *)0x8004CEC8 = (f32) phi_s0->unk8;
                *(void *)0x8004CECC = (f32) phi_s0->unkC;
                *(void *)0x8004CED8 = (f32) phi_s0->unk10;
                *(void *)0x8004CED4 = (f32) *(void *)0x8004CED8;
                temp_ret = func_0001B108(0x8004CEAC);
                phi_s0->unk0 = (void *)0x19;
                phi_return = temp_ret;
            }
        }
        temp_s1_2 = phi_s1 - 1;
        phi_s0 = phi_s0 + 0x18;
        phi_s1 = temp_s1_2;
        if (temp_s1_2 != 0) {
            goto loop_3;
        }
    }
    return phi_return;
}
