void func_1e240(f32 arg0, f32 arg1, ? arg2, void *arg3) {
    ? sp6C;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s2;
    s32 temp_t4;
    s32 temp_v0;
    s32 temp_v0_2;
    u16 temp_a0;
    u16 temp_s7;
    u16 temp_s7_2;
    void *temp_a0_2;
    void *temp_s3;
    void *temp_s5;
    void *temp_v1;
    void *phi_s5;
    s32 phi_s1;
    ? *phi_s6;
    s32 phi_s2;
    void *phi_s3;
    s32 phi_s2_2;
    s32 phi_s1_2;
    u16 phi_s7;
    void *phi_s3_2;

    temp_a0 = *arg3;
    temp_a0_2 = *(void *)0x8008C564;
    temp_v1 = (*((arg3 + 2) + (func_00022FD0(temp_a0) * 2)) * 8) + temp_a0_2->unk4;
    temp_s7 = temp_v1->unk4;
    temp_t4 = temp_v1->unk6 * 0xC;
    temp_s5 = temp_v1->unk0;
    *(void *)0x8008C558 = 0;
    if (temp_s7 != 0) {
        phi_s5 = temp_s5;
        phi_s6 = &sp6C;
        phi_s2 = 0x8007C998;
        phi_s7 = temp_s7;
        phi_s3_2 = *temp_a0_2->unk0 + temp_t4;
loop_2:
        temp_v0 = phi_s5->unk8;
        temp_s1 = phi_s5->unk4;
        phi_s1 = temp_s1;
        if (temp_v0 != 0) {
            phi_s1 = temp_s1 + func_00022FD0(temp_v0 + 1);
        }
        phi_s6->unk4 = phi_s1;
        phi_s6->unk0 = (s32) phi_s5->unk0;
        *(void *)0x8007C990 = (s32) (*(void *)0x8007C990 + phi_s1);
        temp_v0_2 = *(void *)0x8008C558;
        ((temp_v0_2 * 4) + 0x80090000)->unk-3AC8 = (s32) (phi_s2 + 0x24);
        *(void *)0x8008C558 = (s32) (temp_v0_2 + 1);
        phi_s3 = phi_s3_2;
        phi_s2_2 = phi_s2;
        phi_s1_2 = phi_s1;
        if (phi_s1 != 0) {
loop_5:
            (void *)0x8008C580->unk0 = (f32) phi_s3->unk0;
            (void *)0x8008C580->unk4 = (f32) phi_s3->unk4;
            func_000232F4(arg2, (void *)0x8008C580);
            func_00008FE0(phi_s5->unk0, arg0 + (void *)0x8008C580->unk0, arg1 + (void *)0x8008C580->unk4, arg2, phi_s2_2 + 0x24, phi_s2_2);
            temp_s1_2 = phi_s1_2 - 1;
            temp_s2 = phi_s2_2 + 0x128;
            temp_s3 = phi_s3 + 0xC;
            phi_s3 = temp_s3;
            phi_s2_2 = temp_s2;
            phi_s1_2 = temp_s1_2;
            phi_s2 = temp_s2;
            phi_s3_2 = temp_s3;
            if (temp_s1_2 != 0) {
                goto loop_5;
            }
        }
        temp_s7_2 = phi_s7 - 1;
        phi_s5 = phi_s5 + 0xC;
        phi_s6 = phi_s6 + 8;
        phi_s7 = temp_s7_2;
        if (temp_s7_2 != 0) {
            goto loop_2;
        }
    }
    func_00009260();
    *(void *)0x8008C59A = (s16) *(void *)0x8007C990;
}
