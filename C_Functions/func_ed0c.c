void func_ed0c(void *arg0) {
    f32 temp_f6;
    f64 temp_f0;

    arg0->unk14 = (s16) (arg0->unk14 + 1);
    if ((s32) arg0->unk14 >= 0) {
        *(void *)0x8004C37C = (f32) arg0->unk0;
        *(void *)0x8004C380 = (f32) arg0->unk4;
        *(void *)0x8004C384 = (f32) arg0->unk8;
        temp_f6 = (f32) ((f64) arg0->unk10 * 10.0);
        *(void *)0x8004C390 = temp_f6;
        *(void *)0x8004C38C = temp_f6;
        (void *)0x80082C18->unk4 = 0.0f;
        temp_f0 = (f64) arg0->unk10;
        (void *)0x80082C18->unk0 = (f32) (temp_f0 + temp_f0);
        func_000232F4(arg0->unkC, (void *)0x80082C18);
        *(void *)0x8004C394 = (f32) (void *)0x80082C18->unk0;
        *(void *)0x8004C39C = (f32) (void *)0x80082C18->unk4;
        *(void *)0x8004C374 = (s32) ((arg0->unk14 << 0xA) + 0x8005CD58);
        func_0001B108(0x8004C364, (void *)0x80082C18);
        if ((s32) arg0->unk14 >= 7) {
            arg0->unk14 = (s16) (func_00022FD0(0x3C) - 0x78);
        }
    }
}
