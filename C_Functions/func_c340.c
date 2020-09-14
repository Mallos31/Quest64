s32 func_c340(void) {
    s32 sp1C;
    f32 temp_f0;
    f32 temp_f2;
    s32 temp_v0;
    s32 phi_v1;

    phi_v1 = 0;
    if (*(void *)0x8007D1A0 != 0) {
        temp_f0 = (void *)0x8007D1A8->unk24 - (void *)0x8007BAB8->unk14;
        sp1C = 0;
        temp_f2 = (void *)0x8007D1A8->unk2C - (void *)0x8007BAB8->unk1C;
        temp_v0 = *(void *)0x8007D1A0;
        phi_v1 = sp1C;
        if (func_00034F60((temp_f0 * temp_f0) + (temp_f2 * temp_f2), (void *)0x8007BAB8) < ((temp_v0 * 4) + 0x803B0000)->unk-6474) {
            phi_v1 = temp_v0;
        }
    }
    return phi_v1;
}
