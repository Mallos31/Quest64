void *func_2f004(s32 arg0) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    void *temp_a2;
    void *temp_t2;
    void *temp_t8;
    void *temp_v0;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    void *phi_t2;
    void *phi_t8;
    void *phi_v0;
    void *phi_v1;
    s32 phi_a1;
    void *phi_v0_2;
    void *phi_v1_2;
    s32 phi_a1_2;
    void *phi_v0_3;
    void *phi_v1_3;
    s32 phi_a1_3;
    void *phi_v0_4;
    void *phi_v1_4;
    s32 phi_a1_4;

    temp_a2 = (arg0 * 0x64) + 0x8008FD58;
    phi_t2 = temp_a2;
    phi_t8 = (void *)0x8007BA80;
loop_1:
    temp_t2 = phi_t2 + 0xC;
    temp_t8 = phi_t8 + 0xC;
    temp_t8->unk-C = (s32) *phi_t2;
    temp_t8->unk-8 = (s32) temp_t2->unk-8;
    temp_t8->unk-4 = (s32) temp_t2->unk-4;
    phi_t2 = temp_t2;
    phi_t8 = temp_t8;
    if (temp_t2 != (temp_a2 + 0x30)) {
        goto loop_1;
    }
    temp_t8->unk0 = (s32) temp_t2->unk0;
    temp_t8->unk4 = (s32) temp_t2->unk4;
    *(void *)0x800859E2 = (u16) temp_a2->unk38;
    *(void *)0x800859E0 = (u16) temp_a2->unk3A;
    *(void *)0x80084EE4 = (s32) temp_a2->unk3C;
    *(void *)0x80084EE8 = (s32) temp_a2->unk40;
    *(void *)0x80084EF8 = (s32) temp_a2->unk44;
    *(void *)0x80084EFC = (s32) temp_a2->unk48;
    *(void *)0x80084F00 = (s32) temp_a2->unk4C;
    *(void *)0x80084F04 = (s32) temp_a2->unk50;
    *(void *)0x80084F08 = (s32) temp_a2->unk54;
    *(void *)0x80084F0C = (s32) temp_a2->unk58;
    *(void *)0x8007BA60 = (u16) temp_a2->unk5C;
    *(void *)0x8007BA62 = (u16) temp_a2->unk5E;
    *(void *)0x8007BA64 = (u16) temp_a2->unk60;
    *(void *)0x8005FA00 = (s8) temp_a2->unk62;
    *(void *)0x8005F010 = (s8) temp_a2->unk63;
    phi_v0 = (void *)0x80090398;
    phi_v1 = (void *)0x800869D8;
    phi_a1 = 0x20;
loop_3:
    temp_a1 = phi_a1 - 1;
    temp_v1 = phi_v1 + 1;
    temp_v1->unk-1 = (u8) *phi_v0;
    phi_v0 = phi_v0 + 1;
    phi_v1 = temp_v1;
    phi_a1 = temp_a1;
    if (temp_a1 != 0) {
        goto loop_3;
    }
    phi_v0_2 = (void *)0x800903B8;
    phi_v1_2 = (void *)0x80086AE8;
    phi_a1_2 = 0x10;
loop_5:
    temp_a1_2 = phi_a1_2 - 1;
    temp_v1_2 = phi_v1_2 + 1;
    temp_v1_2->unk-1 = (u8) *phi_v0_2;
    phi_v0_2 = phi_v0_2 + 1;
    phi_v1_2 = temp_v1_2;
    phi_a1_2 = temp_a1_2;
    if (temp_a1_2 != 0) {
        goto loop_5;
    }
    phi_v0_3 = (void *)0x800903C8;
    phi_v1_3 = (void *)0x8008CF78;
    phi_a1_3 = 0x97;
loop_7:
    temp_a1_3 = phi_a1_3 - 1;
    temp_v1_3 = phi_v1_3 + 1;
    temp_v1_3->unk-1 = (u8) *phi_v0_3;
    phi_v0_3 = phi_v0_3 + 1;
    phi_v1_3 = temp_v1_3;
    phi_a1_3 = temp_a1_3;
    if (temp_a1_3 != 0) {
        goto loop_7;
    }
    phi_v0_4 = (void *)0x8009045F;
    phi_v1_4 = (void *)0x8007D19C;
    phi_a1_4 = 1;
loop_9:
    temp_a1_4 = phi_a1_4 - 1;
    temp_v1_4 = phi_v1_4 + 1;
    temp_v0 = phi_v0_4 + 1;
    temp_v1_4->unk-1 = (u8) *phi_v0_4;
    phi_v0_4 = temp_v0;
    phi_v1_4 = temp_v1_4;
    phi_a1_4 = temp_a1_4;
    if (temp_a1_4 != 0) {
        goto loop_9;
    }
    return temp_v0;
}

