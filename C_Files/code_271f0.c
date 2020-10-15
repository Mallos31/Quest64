s32 func_800265F0(void) {
    s32 temp_v0;
    void *phi_v1;
    s32 phi_v0;

    *(void *)0x8008FCC2 = (u16)0;
    *(void *)0x8008FCC4 = (u16)0;
    *(void *)0x8008FCC1 = (u8)-1;
    *(void *)0x8008FCC0 = (s8) *(void *)0x8008FCC1;
    *(void *)0x8008FCC6 = (u8)0xFF;
    phi_v1 = (void *)0x8008FCC8;
    phi_v0 = 0x10;
loop_1:
    temp_v0 = phi_v0 - 4;
    phi_v1->unk0 = (u8)0;
    phi_v1->unk3 = (u8)0;
    phi_v1->unk6 = (u8)0;
    phi_v1->unk9 = (u8)0;
    phi_v1 = phi_v1 + 0xC;
    phi_v0 = temp_v0;
    if (temp_v0 != 0) {
        goto loop_1;
    }
    return temp_v0;
}

u8 func_80026658(void) {
    s32 temp_s1;
    s8 temp_a1;
    u16 temp_t1;
    u16 temp_t5;
    u16 temp_v0;
    u16 temp_v1;
    u8 temp_t1_2;
    u8 temp_v0_2;
    u16 phi_v0;
    void *phi_s0;
    s32 phi_s1;
    u8 phi_return;

    temp_v0 = *(void *)0x8008FCC2;
    phi_v0 = temp_v0;
    if ((temp_v0 & 1) != 0) {
        temp_v1 = *(void *)0x8008FCC4;
        if (temp_v1 == 0) {
            if (*(void *)0x8008FCC0 != -1) {
                *(void *)0x8008FCC2 = (u16) (temp_v0 | 2);
            } else {
                *(void *)0x8008FCC2 = (u16) (temp_v0 | 4);
            }
            temp_t1 = *(void *)0x8008FCC2 & 0xFFFE;
            *(void *)0x8008FCC2 = temp_t1;
            phi_v0 = temp_t1 & 0xFFFF;
        } else {
            *(void *)0x8008FCC4 = (u16) (temp_v1 - 1);
            phi_v0 = temp_v0;
        }
    }
    if ((phi_v0 & 2) != 0) {
        temp_t5 = phi_v0 & 0xFFFD;
        *(void *)0x8008FCC2 = temp_t5;
        *(void *)0x8008FCC2 = (u16) (temp_t5 | 4);
        func_800253F0(0);
    } else {
        if ((phi_v0 & 4) != 0) {
            if (func_8002543C(0) == 0) {
                *(void *)0x8008FCC2 = (u16) (*(void *)0x8008FCC2 & 0xFFFB);
                *(void *)0x8008FCC0 = (s8) *(void *)0x8008FCC1;
                temp_a1 = *(void *)0x8008FCC0;
                if (temp_a1 != -1) {
                    func_800252D8(0, temp_a1);
                    func_80026A04();
                    func_80025364(0);
                }
            }
        }
    }
    phi_s0 = (void *)0x8008FCC8;
    phi_s1 = 0x10;
loop_14:
    temp_v0_2 = phi_s0->unk0;
    temp_t1_2 = temp_v0_2 - 1;
    phi_return = temp_v0_2;
    if (temp_v0_2 != 0) {
        phi_s0->unk0 = temp_t1_2;
        phi_return = temp_v0_2;
        if ((temp_t1_2 & 0xFF) == 0) {
            phi_return = func_80025B8C(phi_s0->unk1, phi_s0->unk2, 0x40);
        }
    }
    temp_s1 = phi_s1 - 1;
    phi_s0 = phi_s0 + 3;
    phi_s1 = temp_s1;
    if (temp_s1 != 0) {
        goto loop_14;
    }
    return phi_return;
}

void *func_800267B8(s32 arg0) {
    s32 temp_a0;

    temp_a0 = (s32) (arg0 << 0x18) >> 0x18;
    if (temp_a0 != *(void *)0x8008FCC1) {
        *(void *)0x8008FCC1 = (s8) temp_a0;
        *(void *)0x8008FCC2 = (u16) (*(void *)0x8008FCC2 | 1);
    }
    return (void *)0x8008FCC1;
}

void *func_800267F8(s32 arg0, s32 arg1) {
    s32 temp_a0;

    temp_a0 = (s32) (arg0 << 0x18) >> 0x18;
    if (temp_a0 != *(void *)0x8008FCC1) {
        *(void *)0x8008FCC1 = (s8) temp_a0;
        *(void *)0x8008FCC2 = (u16) (*(void *)0x8008FCC2 | 1);
        *(void *)0x8008FCC4 = (s16) (arg1 & 0xFFFF);
    }
    return (void *)0x8008FCC1;
}

void *func_8002684C(s32 arg0, s32 arg1, s32 arg2) {
    s16 temp_a2;
    s32 temp_v1;
    s8 temp_v1_2;
    void *temp_v0;
    void *phi_v0;
    s32 phi_v1;
    s32 phi_v1_2;
    void *phi_v0_2;
    void *phi_return;
    void *phi_return_2;

    phi_v0 = (void *)0x80053B00;
    phi_v1 = 0x46;
    phi_return_2 = (void *)0x80053B00;
loop_1:
    if ((arg0 == phi_v0->unk0) && (temp_a2 = phi_v0->unk2, phi_v1_2 = phi_v1, phi_v0_2 = phi_v0, phi_return = phi_return_2, (arg1 != temp_a2))) {
        phi_v1_2 = phi_v1;
        phi_v0_2 = phi_v0;
        phi_return = phi_return_2;
        if (-1 != temp_a2) {
block_4:
            temp_v1 = phi_v1 - 1;
            temp_v0 = phi_v0 + 6;
            phi_v0 = temp_v0;
            phi_v1 = temp_v1;
            phi_v1_2 = temp_v1;
            phi_v0_2 = temp_v0;
            phi_return = temp_v0;
            phi_return_2 = temp_v0;
            if (temp_v1 != 0) {
                goto loop_1;
            }
        }
    } else {
        goto block_4;
    }
    if (phi_v1_2 != 0) {
        temp_v1_2 = phi_v0_2->unk4;
        phi_return = (void *)0x8008FCC2;
        if (temp_v1_2 != *(void *)0x8008FCC1) {
            *(void *)0x8008FCC1 = temp_v1_2;
            *(void *)0x8008FCC2 = (u16) (*(void *)0x8008FCC2 | 1);
            *(void *)0x8008FCC4 = (s16) (arg2 & 0xFFFF);
            phi_return = (void *)0x8008FCC2;
        }
    }
    return phi_return;
}

s32 func_800268D4(s32 arg0, s8 arg1, s32 arg2) {
    s32 temp_v0;
    s8 temp_t6;
    u32 temp_t2;
    void *temp_v1;
    s32 phi_v0;
    void *phi_v1;
    void *phi_v1_2;
    s32 phi_return;

    temp_t6 = arg0 & 0xFF;
    temp_t2 = (u32) (((arg1 + 0x80050000)->unk3CAC * (arg2 & 0xFF)) * *(void *)0x8008FCC6) >> 0x10;
    if (temp_t6 == 0) {
        return func_80025B8C(arg1, temp_t2, 0x40, temp_t2);
    }
    phi_v0 = 0xF;
    phi_v1 = (void *)0x8008FCC8;
    phi_v1_2 = (void *)0x8008FCC8;
    phi_return = 0xF;
    if (*(void *)0x8008FCC8 != 0) {
loop_3:
        temp_v0 = phi_v0 - 1;
        temp_v1 = phi_v1 + 3;
        phi_v1_2 = temp_v1;
        phi_return = temp_v0;
        if (temp_v0 != 0) {
            phi_v0 = temp_v0;
            phi_v1 = temp_v1;
            phi_v1_2 = temp_v1;
            phi_return = temp_v0;
            if (*temp_v1 != 0) {
                goto loop_3;
            }
        }
    }
    phi_v1_2->unk0 = temp_t6;
    phi_v1_2->unk2 = (s8) temp_t2;
    phi_v1_2->unk1 = arg1;
    return phi_return;
}

void func_8002699C(s32 arg0, s32 arg1) {
    s32 temp_a0;
    s32 temp_a3;

    temp_a0 = (s32) (arg0 << 0x18) >> 0x18;
    temp_a3 = arg1 & 0xFF;
    func_80025B8C(temp_a0, (u32) (((temp_a0 + 0x80050000)->unk3CAC * temp_a3) * *(void *)0x8008FCC6) >> 0x10, 0x40, temp_a3);
}

void func_80026A04(void) {
    func_80026554((*(void *)0x8005F010 + 0x80050000)->unk3CA4);
}
