u32 func_b884(void *arg0) {
    u32 temp_t8;
    u32 phi_v1;

    temp_t8 = ((s32) (arg0->unk114 * arg0->unk11A) >> 4) & 0xFFFF;
    phi_v1 = temp_t8;
    if ((arg0->unk90 & 1) != 0) {
        phi_v1 = (temp_t8 >> 1) & 0xFFFF;
    }
    return phi_v1;
}
