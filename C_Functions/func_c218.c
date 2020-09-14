void func_c218(s32 arg0) {
    s32 sp2C;
    s32 temp_t0;
    void *temp_v1;

    if (*(void *)0x8007D1A0 != 0) {
        temp_t0 = (((void *)0x8007D1A8->unk74 * 4) + 0x803B0000)->unk-5E9C;
        temp_v1 = *(void *)0x8007B2FC;
        *(void *)0x8007B2FC = (void *) (temp_v1 + 8);
        temp_v1->unk4 = 0x2000;
        temp_v1->unk0 = 0xBA000C02;
        sp2C = temp_t0;
        func_0001DB38(1, 0x8007D1CC, ((void *)0x8007D1A8->unk76 * 0xC) + temp_t0, arg0);
        func_0001E0AC(*(void *)0x8007D224, 0x8007D1CC, (*(void *)0x8007D21E * 0xC) + temp_t0);
        if (**(void *)0x8007D230 != 2) {
            func_00011860(*(void *)0x8007D1CC, *(void *)0x8007D1D0, *(void *)0x8007D1D4, *(void *)0x8007D1F8, *(void *)0x8007D1FC, *(void *)0x8007D200, *(void *)0x8007D1F4 * *(void *)0x8007D1F0);
        }
    }
}
