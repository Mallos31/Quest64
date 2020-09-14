? func_10be8(void *arg0) {
    u16 temp_v0;
    void *temp_a2;
    void *phi_a2;
    u32 phi_a2_2;
    ? phi_v1;

    temp_v0 = arg0->unk14;
    phi_v1 = 1;
    if ((temp_v0 & 0x30) != 0) {
        phi_a2 = (void *)0x8008CF78;
loop_2:
        phi_a2_2 = (u32) phi_a2;
        if (arg0->unk16 != *phi_a2) {
            temp_a2 = phi_a2 + 1;
            phi_a2 = temp_a2;
            phi_a2_2 = (u32) temp_a2;
            if (temp_a2 != 0x8008D00E) {
                goto loop_2;
            }
        }
        if ((temp_v0 & 0x10) != 0) {
            if (phi_a2_2 < 0x8008D00EU) {
                phi_v1 = 1;
            } else {
                phi_v1 = 0;
            }
        } else {
            if (phi_a2_2 < 0x8008D00EU) {
                phi_v1 = 0;
            } else {
                phi_v1 = 1;
            }
        }
    }
    return phi_v1;
}
