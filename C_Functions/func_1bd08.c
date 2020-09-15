void *func_1bd08(void *arg0) {
    s32 temp_v0;
    void *temp_t0;
    void *temp_t1;
    void *temp_v1;
    s32 phi_v0;
    void *phi_v1;
    s32 phi_v0_2;
    void *phi_t0;
    void *phi_t1;
    void *phi_v1_2;
    void *phi_v1_3;

    phi_v0 = 0x100;
    phi_v1 = (void *)0x80088428;
    phi_v0_2 = 0x100;
    phi_v1_3 = (void *)0x80088428;
    if (*(void *)0x80088428 != 0) {
loop_1:
        temp_v0 = phi_v0 - 1;
        temp_v1 = phi_v1 + 0x40;
        phi_v0_2 = temp_v0;
        phi_v1_3 = temp_v1;
        if (temp_v0 != 0) {
            phi_v0 = temp_v0;
            phi_v1 = temp_v1;
            phi_v0_2 = temp_v0;
            phi_v1_3 = temp_v1;
            if (*temp_v1 != 0) {
                goto loop_1;
            }
        }
    }
    if (phi_v0_2 != 0) {
        phi_t0 = arg0;
        phi_t1 = phi_v1_3;
loop_5:
        temp_t0 = phi_t0 + 0xC;
        temp_t1 = phi_t1 + 0xC;
        temp_t1->unk-C = (s32) *phi_t0;
        temp_t1->unk-8 = (s32) temp_t0->unk-8;
        temp_t1->unk-4 = (s32) temp_t0->unk-4;
        phi_t0 = temp_t0;
        phi_t1 = temp_t1;
        if (temp_t0 != (arg0 + 0x3C)) {
            goto loop_5;
        }
        temp_t1->unk0 = (s32) temp_t0->unk0;
        *(void *)0x80088420 = (s32) (*(void *)0x80088420 + 1);
        phi_v1_2 = phi_v1_3;
    } else {
        phi_v1_2 = NULL;
    }
    return phi_v1_2;
}
