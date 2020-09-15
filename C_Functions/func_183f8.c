void func_183f8(u16 arg0, u16 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, void *arg6, void *arg7, void *arg8) {
    u16 temp_v0;
    u16 temp_v0_2;
    f32 phi_f2;
    f32 phi_f0;

    temp_v0 = arg6->unk0;
    if (temp_v0 != 0) {
        if (temp_v0 != 1) {
            if (temp_v0 != 3) {
                phi_f2 = arg7->unk0;
            } else {
                phi_f2 = arg7->unk8 * arg7->unk0;
            }
        } else {
            phi_f2 = (arg8->unk64->unk1C * arg8->unk24) * arg7->unk0;
        }
    } else {
        phi_f2 = (arg8->unk64->unk18 * arg8->unk24) * arg7->unk0;
    }
    temp_v0_2 = arg6->unk2;
    if (temp_v0_2 != 0) {
        if (temp_v0_2 != 1) {
            if (temp_v0_2 != 3) {
                phi_f0 = arg7->unk4;
            } else {
                phi_f0 = arg7->unk8 * arg7->unk4;
            }
        } else {
            phi_f0 = (arg8->unk64->unk1C * arg8->unk24) * arg7->unk4;
        }
    } else {
        phi_f0 = (arg8->unk64->unk18 * arg8->unk24) * arg7->unk4;
    }
    func_0001A268(arg2, arg3, arg6->unk8, arg6->unk4, arg6->unk6, arg0 & 0xFF, (?32) arg1, arg2, arg3, arg4, arg5, phi_f2, phi_f0, phi_f2);
}
