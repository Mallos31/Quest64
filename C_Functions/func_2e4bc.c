void *func_2e4bc(void) {
    s32 sp20;
    s32 temp_a0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s8 temp_t0;
    s8 temp_t0_2;
    s8 temp_t9;
    u16 temp_t2;
    u16 temp_t2_2;
    u16 temp_t3;
    u16 temp_t4;
    u16 temp_t5;
    u16 temp_t8;
    void *temp_a3;
    s32 phi_a0;
    void *phi_v0;
    s32 phi_v1;
    s32 phi_a2;
    s32 phi_v1_2;
    s32 phi_a0_2;
    s8 phi_a2_2;

    temp_t0 = *(void *)0x8008FD2A;
    temp_a3 = (temp_t0 * 2) + 0x8008FD30;
    if ((u8)-2 == temp_a3->unk0) {
        temp_t9 = *(void *)0x80092870;
        sp20 = (s32) temp_t9;
        phi_a0 = 0xF;
        phi_a2 = ((temp_t9 * 0x14) + 0x80090000)->unk2A38 & 0xF;
loop_2:
        temp_a0 = phi_a0 + 1;
        phi_v0 = (void *)0x8008FD30;
        phi_v1 = 0;
loop_3:
        temp_v1 = phi_v1 + 1;
        if (temp_a0 == phi_v0->unk1) {
            phi_v1_2 = 0x7F;
        } else {
            phi_v0 = phi_v0 + 2;
            phi_v1 = temp_v1;
            phi_v1_2 = temp_v1;
            if (temp_v1 < phi_a2) {
                goto loop_3;
            }
        }
        phi_a0_2 = temp_a0;
        phi_a2_2 = (s8) phi_a2;
        if (phi_v1_2 != 0x7F) {
            phi_a0_2 = -1;
            phi_a2_2 = (s8) temp_a0;
        }
        phi_a0 = phi_a0_2;
        phi_a2 = (s32) phi_a2_2;
        if (phi_a0_2 >= 0) {
            goto loop_2;
        }
        temp_a3->unk1 = phi_a2_2;
        if ((temp_t0 + 1) < 0x10) {
            temp_a3->unk3 = (u8)-2;
        }
        temp_v0 = func_00031890(sp20, phi_a2_2 & 0xFF, phi_a2_2, temp_a3);
        if (temp_v0 >= 0) {
            ((*(void *)0x8008FD2A * 2) + 0x80090000)->unk-2D0 = (s8) temp_v0;
        }
        func_0002E234(*(void *)0x8008FD2A);
    } else {
        func_0002E234(temp_t0, temp_a3);
    }
    temp_t0_2 = *(void *)0x8008FD2A;
    temp_v0_2 = func_00031A44(*(void *)0x80092870, ((temp_t0_2 * 2) + 0x80090000)->unk-2D0, 0, 0x80, (temp_t0_2 * 0x64) + 0x8008FD58);
    if (temp_v0_2 != 0) {
        *(void *)0x8008FD24 = temp_v0_2;
        temp_v1_2 = -func_00031BB0(temp_v0_2);
        if (temp_v1_2 != 1) {
            if (temp_v1_2 != 4) {
                *(void *)0x8008FD22 = (u8)0x11;
                *(void *)0x8008FD29 = (u8)0xA;
            } else {
                *(void *)0x8008FD22 = (u8)0xE;
                *(void *)0x8008FD29 = (u8)0xA;
            }
        } else {
            *(void *)0x8008FD22 = (u8)0xD;
            *(void *)0x8008FD29 = (u8)0xA;
        }
        temp_t3 = *(void *)0x8008FD20 & 0xFFF8;
        temp_t5 = temp_t3 | 5;
        *(void *)0x8008FD20 = temp_t3;
        *(void *)0x8008FD20 = temp_t5;
        *(void *)0x8008FD20 = (u16) (temp_t5 & 0xDFFF);
        return (void *)0x8008FD20;
    }
    temp_v0_3 = func_00031A44(*(void *)0x80092870, ((*(void *)0x8008FD2A * 2) + 0x80090000)->unk-2D0, 0x80, 0xE0, 0x80090398);
    if (temp_v0_3 != 0) {
        *(void *)0x8008FD24 = temp_v0_3;
        temp_v1_3 = -func_00031BB0(temp_v0_3);
        if (temp_v1_3 != 1) {
            if (temp_v1_3 != 4) {
                *(void *)0x8008FD22 = (u8)0x11;
                *(void *)0x8008FD29 = (u8)0xA;
            } else {
                *(void *)0x8008FD22 = (u8)0xE;
                *(void *)0x8008FD29 = (u8)0xA;
            }
        } else {
            *(void *)0x8008FD22 = (u8)0xD;
            *(void *)0x8008FD29 = (u8)0xA;
        }
        temp_t2 = *(void *)0x8008FD20 & 0xFFF8;
        temp_t4 = temp_t2 | 5;
        *(void *)0x8008FD20 = temp_t2;
        *(void *)0x8008FD20 = temp_t4;
        *(void *)0x8008FD20 = (u16) (temp_t4 & 0xDFFF);
        return (void *)0x8008FD20;
    }
    temp_t8 = *(void *)0x8008FD20 & 0xFFF8;
    temp_t2_2 = temp_t8 | 5;
    *(void *)0x8008FD20 = temp_t8;
    *(void *)0x8008FD20 = temp_t2_2;
    *(void *)0x8008FD20 = (u16) (temp_t2_2 & 0xDFFF);
    *(void *)0x8008FD22 = (u8)0x17;
    *(void *)0x8008FD29 = (u8)0xA;
    return (void *)0x8008FD20;
}

