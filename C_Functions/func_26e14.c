void func_26e14(void) {
    s32 temp_t0;
    s32 temp_v1;
    void *temp_v0;

    temp_v1 = *(void *)0x80053978;
    temp_v0 = (temp_v1 * 4) + 0x80053984;
    temp_t0 = *temp_v0 - *(void *)0x8005398C;
    *temp_v0 = temp_t0;
    if (temp_t0 < 0) {
block_2:
        *temp_v0 = (s32) *(void *)0x80053974;
        func_000390C0((temp_v1 * 0x19C) + 0x1C + 0x8008F978, temp_t0);
        *(void *)0x8005398C = 0;
        return;
    }
    if (*(void *)0x80053974 < temp_t0) {
        goto block_2;
    }
    func_000368E0((temp_v1 * 0x19C) + 0x1C + 0x8008F978, (s32) (temp_t0 << 0x10) >> 0x10, temp_t0);
}

