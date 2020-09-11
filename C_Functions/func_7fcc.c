void func_7fcc(void *arg0) {
    f32 temp_f0;
    f32 temp_f2;
    f64 temp_f2_2;
    f64 temp_f2_3;
    void *temp_v0;
    f64 phi_f2;

    if ((*(void *)0x8008C592 & 1) != 0) {
        temp_f0 = arg0->unk14 - *(void *)0x8008C5A4;
        temp_f2 = arg0->unk1C - *(void *)0x8008C430;
        *(void *)0x8007BCA0 = (f32) (*(void *)0x8007BCA0 + func_00034F60((temp_f0 * temp_f0) + (temp_f2 * temp_f2)));
        temp_f2_2 = (f64) *(void *)0x8007BCA0;
        phi_f2 = temp_f2_2;
        if (50.0 < temp_f2_2) {
loop_2:
            *(void *)0x8007BCA0 = (f32) (phi_f2 - 50.0);
            temp_v0 = arg0->unk10;
            temp_v0->unk2C = (u16) (temp_v0->unk2C + 1);
            temp_f2_3 = (f64) *(void *)0x8007BCA0;
            phi_f2 = temp_f2_3;
            if (50.0 < temp_f2_3) {
                goto loop_2;
            }
        }
    }
}
