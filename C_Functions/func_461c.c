void func_461c(void) {
    void *temp_t0;
    void *temp_v1;

    *(void *)0x8007BA6C = 0;
    *(void *)0x8007BA68 = 0;
    temp_t0 = (void *)0x8007BAB8->unk78;
    temp_v1 = (void *)0x8007BAB8->unk10;
    (void *)0x8007BAB8->unk80 = (u16)0;
    (void *)0x8007BAB8->unk10C = (u16)0;
    (void *)0x8007BAB8->unkC = (f32) (((f64) (f32) (u32) temp_t0->unkC * *(void *)0x80070F40) + 17.0);
    (void *)0x8007BAB8->unk104 = (s16) (((temp_v1->unk27 + temp_v1->unk24) + temp_v1->unk25) + temp_v1->unk26);
    (void *)0x8007BAB8->unk10A = (u16)0x10;
    (void *)0x8007BAB8->unk106 = (u16) temp_t0->unkC;
    (void *)0x8007BAB8->unk0 = (u16)3;
    (void *)0x8007BAB8->unk110 = 1.0f;
    (void *)0x8007BAB8->unk108 = (u16) temp_t0->unkE;
    (void *)0x8007BAB8->unk2 = (u16)0;
    (void *)0x8007BAB8->unk8 = (u16) ((void *)0x8007BAB8->unk8 & 0xFFDF);
    (void *)0x8007BAB8->unk74 = (u16) ((void *)0x8007BAB8->unk74 | 1);
    (void *)0x8007BAB8->unk130 = (f32) (void *)0x8007BAB8->unk24;
    (void *)0x8007BAB8->unk4 = (s16) (((void *)0x8007BAB8->unk64 * 4) + 0x80050000)->unk3D00->unkDA;
    func_0001D8B0(0x8007BACC, 0x12, 1, *(void *)0x8007BC2C, 1, 1);
}
