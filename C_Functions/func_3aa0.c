s32 func_3aa0(void) {
    s32 temp_v0;
    s32 temp_v1;
    void *temp_a1;
    void *phi_a1;

    (*(void *)0x8007BAC8)->unk18 = 50.0f;
    temp_v0 = *(void *)0x80084EE4;
    *(void *)0x80084EEC = temp_v0;
    temp_v1 = *(void *)0x80084EE8;
    *(void *)0x80084EF0 = temp_v1;
    (void *)0x80085368->unk8 = 0;
    phi_a1 = (void *)0x80054048;
loop_1:
    if ((temp_v0 == phi_a1->unk0) && (temp_v1 == phi_a1->unk2)) {
        *(void *)0x8007BA40 = (f32) phi_a1->unk4;
        *(void *)0x8007BA44 = (f32) phi_a1->unk8;
        *(void *)0x8007BA48 = (f32) phi_a1->unkC;
        (void *)0x80085368->unk8 = -1;
    } else {
        temp_a1 = phi_a1 + 0x10;
        phi_a1 = temp_a1;
        if (temp_a1 != 0x80054158) {
            goto loop_1;
        }
    }
    *(void *)0x80084EE4 = -1;
    *(void *)0x80084EE8 = -1;
    return -1;
}
