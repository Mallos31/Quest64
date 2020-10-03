void func_2c4c4(void) {
    s32 sp1C;
    s32 sp18;
    s16 temp_a1;
    s32 temp_v0;
    s8 temp_a2;
    s8 temp_a2_2;
    u16 temp_a0;
    u16 temp_t0;
    u16 temp_t1;
    u16 temp_t3;
    u16 temp_t3_2;
    u16 temp_t5;
    u16 temp_t5_2;
    u16 temp_t7;
    void *temp_v0_2;
    void *temp_v0_3;
    s32 phi_a0;
    s32 phi_a0_2;
    void *phi_v1;
    u16 phi_a0_3;

    sp1C = *(void *)0x8008FD0C & 0xC;
    phi_v1 = (void *)0x8008FD20;
    if ((*(void *)0x8008FD20 & 0x1000) != 0) {
        temp_a2 = *(void *)0x80092870;
        temp_v0 = func_00039D90(0x80092880, (temp_a2 * 0x68) + 0x80092898, temp_a2);
        if (temp_v0 == 2) {
            phi_a0 = 0;
        } else {
            phi_a0 = temp_v0;
            if (temp_v0 == 0xA) {
                temp_a2_2 = *(void *)0x80092870;
                if (func_0003A4BC(0x80092880, (temp_a2_2 * 0x68) + 0x80092898, temp_a2_2, 0xA) == 0) {
                    phi_a0 = 1;
                } else {
                    phi_a0 = 0xA;
                }
            }
        }
        sp18 = phi_a0;
        *(void *)0x8008FD20 = (u16) (*(void *)0x8008FD20 & 0xEFFF);
        phi_v1 = (void *)0x8008FD20;
    }
    phi_a0_2 = sp18;
    if (sp18 == 0) {
        phi_a0_2 = func_00031574(*(void *)0x80092870, (u8)0xA);
        phi_v1 = (void *)0x8008FD20;
    }
    if (phi_a0_2 != 0) {
        *(void *)0x8008FD24 = phi_a0_2;
        if (-func_00031BB0(phi_a0_2, (u8)0xA) == 1) {
            if (sp1C == 4) {
                *(void *)0x8008FD22 = (u8)0xD;
            } else {
                *(void *)0x8008FD22 = (u8)8;
            }
        } else {
            *(void *)0x8008FD22 = (u8)0x11;
        }
        (void *)0x80090000->unk-2D7 = (u8)0xA;
        temp_t3 = *(void *)0x8008FD20 & 0xFFF8;
        *(void *)0x8008FD20 = temp_t3;
        *(void *)0x8008FD20 = (u16) (temp_t3 | 5);
        return;
    }
    if (sp1C == 4) {
        temp_v0_2 = (*(void *)0x80092870 * 0x14) + 0x80092A38;
        if ((s32) temp_v0_2->unk13 < 2) {
            temp_t5 = *phi_v1 & 0xFFF8;
            if ((temp_v0_2->unk0 & 0x4000) != 0) {
                *(void *)0x8008FD22 = (u8)0x15;
            } else {
                *(void *)0x8008FD22 = (u8)0x14;
            }
            *(void *)0x8008FD29 = (u8)0xA;
            *phi_v1 = temp_t5;
            *phi_v1 = (u16) (temp_t5 | 5);
            return;
        }
        temp_a1 = temp_v0_2->unk0;
        if ((temp_a1 & 0x2000) != 0) {
            temp_a0 = *phi_v1;
            if ((temp_a1 & 0x4000) != 0) {
                *(void *)0x8008FD22 = (u8)0x15;
                *(void *)0x8008FD2A = (u8)0;
                temp_t0 = temp_a0 & 0xFFDF;
                *phi_v1 = temp_t0;
                phi_a0_3 = temp_t0 & 0xFFFF;
            } else {
                *(void *)0x8008FD22 = (u8)0x14;
                phi_a0_3 = temp_a0;
            }
            temp_t3_2 = phi_a0_3 & 0xFFF8;
            *(void *)0x8008FD29 = (u8)0xA;
            *phi_v1 = temp_t3_2;
            *phi_v1 = (u16) (temp_t3_2 | 5);
            return;
        }
    } else {
        if (*(void *)0x8008FD2C != 0) {
            temp_v0_3 = (*(void *)0x80092870 * 0x14) + 0x80092A38;
            if ((s32) temp_v0_3->unk13 < 2) {
block_31:
                *(void *)0x8008FD22 = (u8)0x18;
                *(void *)0x8008FD29 = (u8)0xA;
                func_0002DD18(phi_a0_2, (u8)0xA);
                temp_t5_2 = *(void *)0x8008FD20 & 0xFFF8;
                *(void *)0x8008FD20 = temp_t5_2;
                *(void *)0x8008FD20 = (u16) (temp_t5_2 | 5);
                *(void *)0x8008FD2A = (u8)0;
                *(void *)0x8008FD20 = (u16) (*(void *)0x8008FD20 & 0xFFDF);
                return;
            }
            if ((temp_v0_3->unk0 & 0x2000) != 0) {
                goto block_31;
            }
        }
        if ((((*(void *)0x80092870 * 0x14) + 0x80090000)->unk2A38 & 0x4000) == 0) {
            if (sp1C == 0) {
                *(void *)0x8008FD22 = (u8)9;
            } else {
                *(void *)0x8008FD22 = (u8)0xA;
            }
            (void *)0x80090000->unk-2D7 = (u8)0xA;
            temp_t7 = *phi_v1 & 0xFFF8;
            *phi_v1 = temp_t7;
            *phi_v1 = (u16) (temp_t7 | 5);
            return;
        }
    }
    func_0002DD18(phi_a0_2, (u8)0xA);
    temp_t1 = *(void *)0x8008FD20 & 0xFFF8;
    *(void *)0x8008FD20 = temp_t1;
    *(void *)0x8008FD20 = temp_t1;
    *(void *)0x8008FD2A = (u8)0;
    *(void *)0x8008FD20 = (u16) (*(void *)0x8008FD20 & 0xFFDF);
}

