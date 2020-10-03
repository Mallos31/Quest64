s32 func_267d8(void) {
    s32 sp28;
    s32 sp24;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_s0;
    s32 temp_t6;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_v0;
    s32 temp_v1;
    void *temp_a1;
    void *temp_a3;
    void *temp_v0_2;
    void *phi_v0;
    s32 phi_v1;
    s32 phi_a0;
    s32 phi_return;

    temp_v1 = *(void *)0x8005396C;
    temp_v0 = temp_v1 * 4;
    temp_a1 = temp_v0 + 0x8005390C;
    temp_a2 = *temp_a1;
    if (0xFF != temp_a2) {
        temp_t8 = (temp_v1 + 1) & 7;
        temp_s0 = temp_a2;
        *temp_a1 = 0xFF;
        *(void *)0x8005396C = temp_t8;
        *(void *)0x8008F934 = (s32) (temp_t8 & 3);
        sp24 = temp_v0;
        func_000258F8(temp_a2, temp_a1, temp_a2, (void *)0x8005396C);
        if (**(void *)0x8008F92C != 0) {
            *(void *)0x8008F934 = 4;
            temp_t6 = 4 * 4;
            temp_a1_2 = *(void *)0x800539A4;
            (temp_t6 + 0x80050000)->unk39BC = (s32) (temp_v0 + 0x80050000)->unk392C;
            sp28 = temp_a1_2;
            (temp_t6 + 0x80050000)->unk39D0 = (s32) (temp_v0 + 0x80050000)->unk394C;
            phi_return = temp_v0;
            if (temp_s0 != temp_a1_2) {
                phi_return = temp_v0;
                if (0xFF != temp_a1_2) {
                    func_0002568C(temp_a1_2, temp_a1_2, 0xFF);
                    *(void *)0x800539A4 = temp_s0;
                    phi_return = func_00025634(temp_s0);
                }
            }
            if (0xFF == *(void *)0x800539A4) {
                *(void *)0x800539A4 = temp_s0;
                phi_return = func_00025634(temp_s0, *(void *)0x800539A4, 0xFF);
            }
        } else {
            temp_t9 = *(void *)0x8008F934 * 4;
            (temp_t9 + 0x80050000)->unk39BC = (s32) (temp_v0 + 0x80050000)->unk392C;
            (temp_t9 + 0x80050000)->unk39D0 = (s32) (temp_v0 + 0x80050000)->unk394C;
            phi_a0 = temp_t9;
            if (*(temp_t9 + 0x800539A8) != 0) {
                temp_a2_2 = (temp_t9 + 0x80050000)->unk3994;
                phi_a0 = temp_t9;
                if (temp_s0 != temp_a2_2) {
                    func_0002568C(temp_a2_2, 0x800539A8, temp_a2_2);
                    phi_a0 = *(void *)0x8008F934 * 4;
                }
            }
            temp_a3 = phi_a0 + (void *)0x80053994;
            phi_v0 = (void *)0x80053994;
            phi_v1 = 0;
loop_11:
            if (temp_s0 == *phi_v0) {
                *(0x800539A8 + phi_v1) = 0;
                *phi_v0 = 0xFF;
            }
            temp_v0_2 = phi_v0 + 4;
            phi_v0 = temp_v0_2;
            phi_v1 = phi_v1 + 4;
            if (temp_v0_2 != 0x800539A4) {
                goto loop_11;
            }
            *temp_a3 = temp_s0;
            phi_return = func_00025634(temp_s0, 0x800539A8, 0xFF, temp_a3);
        }
        if (sp28 != temp_s0) {
            *(void *)0x8008F92C = (void *) (*(void *)0x8008F92C + 4);
            return func_00025E0C();
        }
    } else {
        *(void *)0x8005396C = (s32) *(void *)0x80053970;
        phi_return = temp_v0;
    }
    return phi_return;
}

