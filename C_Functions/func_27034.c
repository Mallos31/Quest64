? func_27034(u32 arg0) {
    if (*(void *)0x8005398C != 0) {
        return 1;
    }
    if (*(void *)0x80053990 != 0) {
        return 1;
    }
    *(void *)0x8005398C = (u32) (0x8000U / arg0);
    return 0;
}

