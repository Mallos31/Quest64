? func_27154(s32 arg0) {
    s32 temp_v1;

    if (*(void *)0x8005398C != 0) {
block_2:
        return 1;
    }
    if (*(void *)0x80053990 != 0) {
        goto block_2;
    }
    (void *)0x80053974->unk0 = (s32) ((arg0 << 7) + 0x7F);
    func_000368E0(0x8008F994, (void *)0x80053974->unk2, arg0);
    func_000368E0(0x8008FB30, *(void *)0x80053976);
    temp_v1 = (void *)0x80053974->unk0;
    (void *)0x80053984->unk0 = temp_v1;
    (void *)0x80053984->unk4 = temp_v1;
    return 0;
}

