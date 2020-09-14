f32 func_14b5c(s32 arg0) {
    f32 temp_f0;
    s32 temp_t2;
    s32 temp_v0;
    void *temp_v1;

    *(void *)0x80086ED8 = arg0;
    if ((*(void *)0x80086DC8 & 0x40) != 0) {
        *(void *)0x80086E40 = (s32) *(void *)0x80086B80;
    }
    temp_v0 = arg0 * 0x38;
    *(void *)0x80086DC0 = (s32) *(*(void *)0x80086EDC + temp_v0);
    temp_t2 = *(void *)0x80086DC0;
    if (temp_t2 != 0) {
        if (temp_t2 != 2) {
            *(void *)0x80086DCC = (f32) (*(void *)0x80086EDC + temp_v0)->unk4;
            *(void *)0x80086DD0 = (f32) (*(void *)0x80086EDC + temp_v0)->unk8;
            *(void *)0x80086DD4 = (f32) (*(void *)0x80086EDC + temp_v0)->unkC;
        }
    }
    *(void *)0x80086DC8 = (u16) (*(void *)0x80086DC8 & 0xFFAF);
    *(void *)0x80086E0C = (f32) (*(void *)0x80086EDC + temp_v0)->unk18;
    *(void *)0x80086E18 = (f32) (*(void *)0x80086EDC + temp_v0)->unk14;
    *(void *)0x80086E1C = (f32) (*(void *)0x80086EDC + temp_v0)->unk10;
    *(void *)0x80086E28 = (f32) (*(void *)0x80086EDC + temp_v0)->unk24;
    *(void *)0x80086E2C = (f32) (*(void *)0x80086EDC + temp_v0)->unk28;
    *(void *)0x80086E20 = (f32) (*(void *)0x80086EDC + temp_v0)->unk1C;
    *(void *)0x80086E24 = (f32) (*(void *)0x80086EDC + temp_v0)->unk20;
    temp_v1 = *(void *)0x80086EDC + temp_v0;
    *(void *)0x80086EC8 = (f32) temp_v1->unk2C;
    *(void *)0x80086ECC = (f32) temp_v1->unk30;
    *(void *)0x80086ED0 = (f32) temp_v1->unk34;
    *(void *)0x80086E08 = 0.0f;
    temp_f0 = *(void *)0x80086E08;
    *(void *)0x80086E04 = temp_f0;
    *(void *)0x80086E00 = temp_f0;
    *(void *)0x80086DFC = 0.0f;
    return temp_f0;
}
