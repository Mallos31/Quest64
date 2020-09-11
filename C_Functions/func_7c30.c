Warning: confusing control flow, output may have incorrect && and || detection. Run with --no-andor to disable detection and print gotos instead.

s32 func_7c30(s32 arg0, void *arg1) {
    s32 sp1C;
    u16 temp_v0;
    s32 phi_v1;

    phi_v1 = 0;
    if ((arg1->unk60 & 1) == 0) {
        phi_v1 = 0;
        if ((*(void *)0x8007B2E4 & 0x80) == 0) {
            temp_v0 = *(void *)0x8008C592;
            if ((temp_v0 & 1) != 0) {
                phi_v1 = 0;
                if ((temp_v0 & 0x202) == 0) {
                    sp1C = 0;
                    phi_v1 = sp1C;
                    if (func_00015B50() == 0) {
                        phi_v1 = sp1C;
                        if (*(void *)0x8008C594 == 0) {
block_7:
                            phi_v1 = 1;
                        }
                    }
                }
            } else {
                goto block_7;
            }
        }
    }
    return phi_v1;
}
