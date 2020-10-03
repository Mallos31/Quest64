void *func_26ef4(void) {
    s32 temp_a2;
    s32 temp_t0;
    void *temp_v0;

    temp_a2 = *(void *)0x80053978;
    temp_v0 = (temp_a2 * 4) + 0x80053984;
    temp_t0 = *temp_v0 + *(void *)0x80053990;
    *temp_v0 = temp_t0;
    if (temp_t0 < 0) {
block_2:
        *(void *)0x80053990 = 0;
        *temp_v0 = (s32) *(void *)0x80053974;
        return temp_v0;
    }
    if (*(void *)0x80053974 < temp_t0) {
        goto block_2;
    }
    return func_000368E0((temp_a2 * 0x19C) + 0x1C + 0x8008F978, (s32) (temp_t0 << 0x10) >> 0x10, temp_a2);
}

