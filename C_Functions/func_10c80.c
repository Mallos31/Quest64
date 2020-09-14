void func_10c80(void *arg0) {
    void *temp_t6;

    temp_t6 = arg0 + 0x1E;
    *(void *)0x80085350 = temp_t6;
    (void *)0x80085368->unk0 = (?32) temp_t6->unk0;
    (void *)0x80085368->unk4 = (?32) temp_t6->unk2;
    (void *)0x80085368->unk8 = (?32) temp_t6->unk4;
    (void *)0x80085368->unkC = (u16) arg0->unk14;
    (void *)0x80085368->unk10 = (?32) arg0->unk1A;
    (void *)0x80085368->unk14 = (f32) arg0->unk8;
}
