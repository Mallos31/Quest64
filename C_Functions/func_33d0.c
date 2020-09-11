void func_33d0(void) {
    void *temp_t1;
    void *temp_t6;
    void *phi_t6;
    void *phi_t1;

    phi_t6 = (void *)0x80053D04;
    phi_t1 = (void *)0x8007BA80;
loop_1:
    temp_t6 = phi_t6 + 0xC;
    temp_t1 = phi_t1 + 0xC;
    temp_t1->unk-C = (s32) *phi_t6;
    temp_t1->unk-8 = (s32) temp_t6->unk-8;
    temp_t1->unk-4 = (s32) temp_t6->unk-4;
    phi_t6 = temp_t6;
    phi_t1 = temp_t1;
    if (temp_t6 != 0x80053D34) {
        goto loop_1;
    }
    temp_t1->unk0 = (s32) temp_t6->unk0;
    temp_t1->unk4 = (s32) temp_t6->unk4;
    (void *)0x8007BAB8->unk10 = (void *)0x8007BA80;
    (void *)0x8007BAB8->unk6 = (u16)0;
    (void *)0x8007BAB8->unk8 = (u16)0;
    (void *)0x8007BAB8->unk11C = (u16)0;
    (void *)0x8007BAB8->unk66 = (u16)-1;
    (void *)0x8007BAB8->unk68 = (u16)0;
    (void *)0x8007BAB8->unk6C = (u16)1;
    (void *)0x8007BAB8->unk78 = (void *)0x8007BA80;
    (void *)0x8007BAB8->unk7C = 0x8007BB38;
    (void *)0x8007BAB8->unk72 = (u16)0;
    (void *)0x8007BAB8->unk74 = (u16)0;
    (void *)0x8007BAB8->unk38 = (f32) (void *)0x8007BA80->unk20;
    (void *)0x8007BAB8->unk3C = (f32) (void *)0x8007BA80->unk18;
    (void *)0x8007BAB8->unk64 = (s16) (void *)0x8007BA80->unk2;
    *(void *)0x8007BA4C = 0x108;
    *(void *)0x8007BA60 = (u16)0xD;
    *(void *)0x8007BA62 = (u16)0x11;
    *(void *)0x8007BA64 = (u16)0;
    *(void *)0x8007BCA0 = 0.0f;
    *(void *)0x8007BC14 = 0.0f;
    *(void *)0x8007BC10 = (f32) *(void *)0x8007BC14;
    *(void *)0x8007BC1C = 0.0f;
    *(void *)0x8007BC18 = (f32) *(void *)0x8007BC1C;
    func_00024260(0x86B830, 0x80206000, 0x871900 - 0x86B830, (void *)0x8007BC14);
}
