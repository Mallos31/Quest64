f32 func_19934(void *arg0) {
    f32 temp_f0;
    u16 temp_v0;
    void *temp_a1;

    temp_v0 = arg0->unk0;
    if ((temp_v0 & 3) == 0) {
        arg0->unk10 = (s32) ((((s32) temp_v0 >> 2) * 4) + 0x80050000)->unk-30A4;
    }
    temp_f0 = ((temp_v0 * 4) + 0x80050000)->unk-3098;
    arg0->unk2C = temp_f0;
    arg0->unk28 = temp_f0;
    temp_a1 = *(void *)0x8007B2FC;
    *(void *)0x8007B2FC = (void *) (temp_a1 + 8);
    temp_a1->unk0 = 0xFB000000;
    temp_a1->unk4 = (s32) ((arg0->unk0 + 0x80050000)->unk-3068 | -0x100);
    return temp_f0;
}
