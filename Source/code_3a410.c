s32 func_80039810(void *arg0, void *arg1) {
    s32 temp_a2;
    s32 temp_v1;
    void *temp_a0;
    s32 phi_v1;

    temp_a2 = arg0->unk44;
    phi_v1 = 0;
    if (temp_a2 > 0) {
loop_1:
        temp_a0 = arg0->unk40 + (phi_v1 * 0x30);
        if (temp_a0->unk1C == 0) {
            temp_a0->unk1C = arg1;
            temp_a0->unk20 = (u16)5;
            temp_a0->unk28 = 0;
            temp_a0->unk2E = (u8)0x40;
            temp_a0->unk2F = (u8)0;
            temp_a0->unk24 = 1.0f;
            temp_a0->unk2C = (s16) ((s32) (arg1->unkD * 0x7FFF) / 0x7F);
            return phi_v1;
        }
        temp_v1 = (s32) ((phi_v1 + 1) << 0x10) >> 0x10;
        phi_v1 = temp_v1;
        if (temp_v1 < temp_a2) {
            goto loop_1;
        }
    }
    return -1;
}
