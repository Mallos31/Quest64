void func_4760(void *arg0, void *arg1, ? arg2) {
    f32 sp1C;
    f32 sp18;
    f32 temp_f14;
    f32 temp_f8;
    s32 temp_t0;
    s32 temp_v1;
    u16 temp_t5;
    u16 temp_v0;
    u16 temp_v0_2;
    u16 temp_v0_3;
    u16 temp_v0_4;
    f32 phi_f14;
    f32 phi_f14_2;
    void *phi_a1;
    u16 phi_v0;

    temp_f8 = -(f32) *(void *)0x80092871;
    temp_f14 = -(f32) *(void *)0x80092872;
    sp1C = temp_f8;
    if (-8.0f < temp_f8) {
        if (temp_f8 < 8.0f) {
            sp1C = 0.0f;
        }
    }
    phi_f14 = temp_f14;
    if (-8.0f < temp_f14) {
        phi_f14 = temp_f14;
        if (temp_f14 < 8.0f) {
            phi_f14 = 0.0f;
        }
    }
    if ((sp1C != 0.0f) || (phi_f14_2 = phi_f14, (phi_f14 != 0.0f))) {
        (void *)0x8007BC30->unk0 = sp1C;
        (void *)0x8007BC30->unk4 = phi_f14;
        func_000232F4(*(void *)0x80086DE8, phi_f14, (void *)0x8007BC30);
        sp1C = (void *)0x8007BC30->unk0;
        phi_f14_2 = (void *)0x8007BC30->unk4;
    } else {

    }
    if (*(void *)0x8008C638 != 0) {
        sp1C = 0.0f;
        phi_a1 = (void *)0x8007B2E4;
        phi_f14_2 = 0.0f;
    } else {
        if (*(void *)0x8008C63C != 0) {
block_17:
            sp1C = 0.0f;
        } else {
            if ((*(void *)0x8007B2E4 & 0x300F) != 0) {
                goto block_17;
            } else {
                phi_a1 = (void *)0x8007B2E4;
                if ((arg1->unk80 & 8) != 0) {
                    goto block_17;
                }
            }
        }
    }
    temp_v0 = *(void *)0x8008C592;
    if (((temp_v0 & 1) != 0) && ((temp_v0 & 0x202) != 0)) {
block_23:
        sp1C = 0.0f;
    } else {
        if (*(void *)0x8008C594 != 0) {
            goto block_23;
        }
    }
    temp_v0_2 = arg1->unk8;
    if ((temp_v0_2 & 1) != 0) {
        temp_v1 = *(void *)0x8007BC24;
        temp_t0 = temp_v1 - 1;
        if (temp_v1 != 0) {
            *(void *)0x8007BC24 = temp_t0;
            if (temp_t0 == 0) {
                sp18 = phi_f14_2;
                func_0002E768(phi_f14_2, 0, phi_a1);
            }
        } else {
            if (*(void *)0x800905C0 == 0) {
                arg1->unk8 = (s16) (temp_v0_2 & 0xFFFE);
                sp18 = phi_f14_2;
                *phi_a1 = (s32) (*phi_a1 & -3);
                func_0001C8C4(phi_f14_2, (void *)0x8007BC24, phi_a1);
            }
        }
    } else {
        if ((temp_v0_2 & 2) != 0) {
            if (*(void *)0x800905C0 == 0) {
                arg1->unk8 = (s16) (temp_v0_2 & 0xFFFD);
                *phi_a1 = (s32) (*phi_a1 & -3);
            }
        } else {
            if ((temp_v0_2 & 0x10) != 0) {
                if (*(void *)0x800905C0 == 0) {
                    arg1->unk8 = (s16) (temp_v0_2 & 0xFFEF);
                    *phi_a1 = (s32) (*phi_a1 & -3);
                }
            }
        }
    }
    temp_v0_3 = arg1->unk0;
    if (temp_v0_3 != 1) {
        if (temp_v0_3 == 2) {
            func_0000534C(sp1C, phi_f14_2, arg0, arg1);
        } else {
            func_00004D30(sp1C, phi_f14_2, arg0, arg1);
        }
    } else {
        func_00004E58(sp1C, phi_f14_2, arg0, arg1);
    }
    func_00005748(0xA01, arg0, arg1);
    if (arg1->unk0 == 2) {
        temp_t5 = *(void *)0x8007BC28 + arg0->unk58;
        *(void *)0x8007BC28 = temp_t5;
        if ((temp_t5 & 0xFFFF) >= 0x97) {
            *(void *)0x8007BC28 = (u16)0U;
            func_000268D4(0, 0x21, 0xFF);
        }
        temp_v0_4 = arg1->unk4;
        if (temp_v0_4 != 0) {
            phi_v0 = temp_v0_4;
            if ((temp_v0_4 & 3) == 0) {
                (void *)0x8004CE30->unk18 = (f32) arg0->unk0;
                (void *)0x8004CE30->unk1C = (f32) (arg0->unk4 + 1.0f);
                (void *)0x8004CE30->unk30 = 0.0f;
                (void *)0x8004CE30->unk20 = (f32) arg0->unk8;
                (void *)0x8004CE30->unk38 = 0.0f;
                (void *)0x8004CE30->unk34 = (f32) *(void *)0x80070F48;
                func_0001B108((void *)0x8004CE30);
                phi_v0 = arg1->unk4;
            }
            arg1->unk4 = (s16) (phi_v0 - 1);
        }
    }
    func_0000600C(arg1, arg0);
    func_000074A0(arg1, arg0);
}
