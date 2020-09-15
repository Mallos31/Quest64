void func_15698(void *arg0, u32 arg1, s32 arg2, u16 arg3) {
    void *sp54;
    ? sp3C;
    s16 temp_a1;
    s16 temp_t9;
    s32 temp_t6;
    s32 temp_t8;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    u16 temp_a0;
    u16 temp_v0_4;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_s0;
    void *temp_v1;
    s32 phi_v0;
    void *phi_v1;
    void *phi_v1_2;
    s32 phi_v0_2;
    void *phi_s0;
    void *phi_s0_2;
    s32 phi_v0_3;

    sp3C.unk0 = (s32) (void *)0x8004CD94->unk0;
    sp3C.unk4 = (s32) (void *)0x8004CD94->unk4;
    sp3C.unk8 = (s32) (void *)0x8004CD94->unk8;
    sp3C.unkC = (s32) (void *)0x8004CD94->unkC;
    sp3C.unk10 = (s32) (void *)0x8004CD94->unk10;
    if (arg2 == 0) {
        func_000111A4(*(void *)0x8007B340, 2, 8, 0x800EBE38);
        *(void *)0x80086F10 = (s32) (*(void *)0x80086F10 | 1);
        *(void *)0x80086F14 = 8;
    }
    temp_t9 = (arg1 >> 8) & 0xF;
    temp_a1 = arg1 & 0xFF;
    temp_v0 = temp_t9 * 4;
    temp_t8 = (temp_v0 + 0x800C0000)->unk1B14;
    temp_t6 = temp_a1 * 0x44;
    temp_a2 = temp_t8 + temp_t6;
    if (arg2 == 0) {
        temp_a0 = temp_a2->unk20;
        if ((s32) temp_a0 >= 2) {
            phi_v0 = 3;
            phi_v1 = (void *)0x80087170;
            phi_v1_2 = (void *)0x80087170;
            if (*(void *)0x80087170 != 0) {
loop_5:
                temp_v0_2 = phi_v0 - 1;
                temp_v1 = phi_v1 + 0x18;
                phi_v1_2 = temp_v1;
                if (temp_v0_2 != 0) {
                    phi_v0 = temp_v0_2;
                    phi_v1 = temp_v1;
                    phi_v1_2 = temp_v1;
                    if (*temp_v1 != 0) {
                        goto loop_5;
                    }
                }
            }
            phi_v1_2->unk0 = (s16) (temp_a0 - 1);
            phi_v1_2->unk4 = (u16)0;
            phi_v1_2->unk8 = arg1;
            phi_v1_2->unk2 = (s16) (temp_a2->unk22 + 1);
            phi_v1_2->unk10 = temp_a2;
            phi_v1_2->unkC = arg3;
            phi_v1_2->unk14 = arg0;
        }
    }
    phi_v0_2 = 9;
    phi_s0 = (void *)0x80086F18;
    phi_s0_2 = (void *)0x80086F18;
    phi_v0_3 = 9;
    if (*(void *)0x80086F1C != 0) {
loop_9:
        temp_v0_3 = phi_v0_2 - 1;
        temp_s0 = phi_s0 + 0x3C;
        phi_s0_2 = temp_s0;
        phi_v0_3 = temp_v0_3;
        if (temp_v0_3 != 0) {
            phi_v0_2 = temp_v0_3;
            phi_s0 = temp_s0;
            phi_s0_2 = temp_s0;
            phi_v0_3 = temp_v0_3;
            if (temp_s0->unk4 != 0) {
                goto loop_9;
            }
        }
    }
    phi_s0_2->unk0 = temp_t9;
    phi_s0_2->unk2 = temp_a1;
    phi_s0_2->unk28 = 0;
    phi_s0_2->unk2C = temp_a2;
    phi_s0_2->unk30 = (s32) ((temp_v0 + 0x800C0000)->unk3520 + (temp_a1 * 0x48));
    phi_s0_2->unk24 = arg0;
    phi_s0_2->unk4 = (u16) temp_a2->unkA;
    phi_s0_2->unk6 = (u16)0x64;
    phi_s0_2->unk8 = (u16) temp_a2->unk24;
    phi_s0_2->unkA = arg3;
    sp54 = temp_a2;
    func_00018318(9 - phi_v0_3, temp_a1, temp_a2, temp_t9);
    temp_v0_4 = temp_a2->unk12;
    if (temp_v0_4 != 0) {
        if ((temp_v0_4 != 1) && (temp_v0_4 != 2)) {

        } else {
            phi_s0_2->unk20 = 0.0f;
            phi_s0_2->unk1C = 0.0f;
            phi_s0_2->unk18 = 0.0f;
        }
    } else {
        (void *)0x800871D0->unk0 = (f32) (*(&sp3C + (temp_a2->unk30 * 4)) * *((((temp_a2->unk2C + arg2) & 7) * 0xC) + 0x800C1B30));
        (void *)0x800871D0->unk4 = (f32) (*(&sp3C + (temp_a2->unk30 * 4)) * ((((temp_a2->unk2C + arg2) & 7) * 0xC) + 0x800C1B30)->unk8);
        sp54 = temp_a2;
        func_000232F4(arg0->unk10, arg2, (void *)0x800871D0, temp_a2, &sp3C);
        phi_s0_2->unk18 = (f32) (void *)0x800871D0->unk0;
        phi_s0_2->unk20 = (f32) (void *)0x800871D0->unk4;
        if ((temp_a2->unk2A & 2) != 0) {
            phi_s0_2->unk1C = 0.0f;
        } else {
            phi_s0_2->unk1C = (f32) ((sp + (temp_a2->unk30 * 4))->unk3C * ((((temp_a2->unk2C + arg2) & 7) * 0xC) + 0x800C0000)->unk1B34);
        }
    }
    sp54 = temp_t8 + temp_t6;
    (((temp_t8 + temp_t6)->unk18 * 4) + 0x80050000)->unk-3308(phi_s0_2, temp_t8 + temp_t6);
    temp_a2_2 = temp_t8 + temp_t6;
    if (phi_s0_2->unk28 != 0) {
        sp54 = temp_a2_2;
        ((temp_a2_2->unk26 * 4) + 0x80050000)->unk-3330(phi_s0_2, arg0, temp_a2_2);
        if (temp_a2_2->unk14 == 2) {
            func_0000EE60(phi_s0_2->unkC, phi_s0_2->unk10, phi_s0_2->unk14, 0xA00, 0x800871E0);
            phi_s0_2->unk10 = (f32) *(void *)0x800871E4;
        }
        func_00017998(phi_s0_2, phi_s0_2->unk24);
        return;
    }
    phi_s0_2->unk4 = (u16)0U;
}
