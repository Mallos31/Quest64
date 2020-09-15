void *func_17540(s32 arg0, void *arg1) {
    u16 temp_v1;
    void *temp_v0;

    if ((arg1->unk5E & 1) != 0) {
        arg1->unk50 = (u16)-1;
        *(void *)0x8007C990 = (s32) (*(void *)0x8007C990 - 1);
        return (void *)0x8007C990;
    }
    temp_v1 = *(void *)0x8008C592;
    if ((temp_v1 & 0x100) == 0) {
        *(void *)0x8008C592 = (u16) (temp_v1 | 0x10);
        temp_v0 = *(void *)0x8007BAC8;
        temp_v0->unk2A = (u16) (temp_v0->unk2A + 1);
        return temp_v0;
    }
    return func_000208B8(arg1, (void *)0x8008C592);
}
