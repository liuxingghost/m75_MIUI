.class public Landroid/os/MeizuDeviceContorl;
.super Ljava/lang/Object;
.source "MeizuDeviceContorl.java"


# static fields
.field private static DEBUG:Z = false

.field public static final DEVCFG_ACCELERATION_SENSOR:I = 0x9

.field public static final DEVCFG_ACTIVATE_STATS:I = 0x5

.field public static final DEVCFG_BUTTON_LIGHT:I = 0x2

.field public static final DEVCFG_GRAVITY_SENSOR:I = 0x4

.field public static final DEVCFG_GYROSCOPE_SENSOR:I = 0xa

.field public static final DEVCFG_IR_CALIBRATE:I = 0x0

.field public static final DEVCFG_LIGHT_SENSOR:I = 0x3

.field public static final DEVCFG_MAINTAIN_STATE:I = 0x6

.field public static final DEVCFG_MAX_INT_FIELDS:I = 0x7

.field public static final DEVCFG_SHOPDEMO_TOOL:I = 0x8

.field public static final DEVCFG_TOUCH_SCREEN:I = 0x1

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "MeizuDeviceContorl"

    sput-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static adjustGravitySensor([I)I
    .locals 2
    .param p0, "values"    # [I

    .prologue
    .line 199
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    const-string v1, "adjustGravitySensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceContorl;->native_adjust_gravity_sensor([I)I

    move-result v0

    return v0
.end method

.method public static calibrateGp2ap()I
    .locals 2

    .prologue
    .line 236
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    const-string v1, "calibrateGp2ap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    invoke-static {}, Landroid/os/MeizuDeviceContorl;->native_calibrate_gp2ap()I

    move-result v0

    return v0
.end method

.method public static calibrateGravitySensor()I
    .locals 2

    .prologue
    .line 211
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    const-string v1, "calibrateGravitySensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    invoke-static {}, Landroid/os/MeizuDeviceContorl;->native_calibrate_gravity_sensor()I

    move-result v0

    return v0
.end method

.method public static enableTouchAdjust()I
    .locals 2

    .prologue
    .line 186
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    const-string v1, "enableTouchAdjust"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    invoke-static {}, Landroid/os/MeizuDeviceContorl;->native_enable_touch_adjust()I

    move-result v0

    return v0
.end method

.method private static native native_adjust_gravity_sensor([I)I
.end method

.method private static native native_calibrate_gp2ap()I
.end method

.method private static native native_calibrate_gravity_sensor()I
.end method

.method private static native native_enable_touch_adjust()I
.end method

.method private static native native_read_auto_cabc()I
.end method

.method private static native native_read_cfgparam(I[I)I
.end method

.method private static native native_read_cpu_value()I
.end method

.method private static native native_read_gp2ap()I
.end method

.method private static native native_read_gravity_value([I)I
.end method

.method private static native native_reset_calibration()I
.end method

.method private static native native_save_cpu_value(I)I
.end method

.method private static native native_set_auto_cabc(I)I
.end method

.method private static native native_set_hdmi_cable_status(I)I
.end method

.method private static native native_set_key_wakeup_type(I)I
.end method

.method private static native native_switch_usb_fast_charger(I)I
.end method

.method private static native native_update_led_brightness(I)I
.end method

.method private static native native_write_cfgparam(I[I)I
.end method

.method private static native native_write_gp2ap(I)I
.end method

.method public static readAutoCabc()I
    .locals 4

    .prologue
    .line 114
    invoke-static {}, Landroid/os/MeizuDeviceContorl;->native_read_auto_cabc()I

    move-result v0

    .line 115
    .local v0, "ret":I
    sget-boolean v1, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 116
    sget-object v1, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readAutoCabc--value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    return v0
.end method

.method public static readCPUfreq()I
    .locals 4

    .prologue
    .line 73
    invoke-static {}, Landroid/os/MeizuDeviceContorl;->native_read_cpu_value()I

    move-result v0

    .line 74
    .local v0, "ret":I
    sget-boolean v1, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 75
    sget-object v1, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readCPUfreq----value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    return v0
.end method

.method public static readCfgParam(I[I)I
    .locals 4
    .param p0, "dev"    # I
    .param p1, "info"    # [I

    .prologue
    .line 171
    sget-boolean v1, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 172
    sget-object v1, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readCfgParam dev:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    invoke-static {p0, p1}, Landroid/os/MeizuDeviceContorl;->native_read_cfgparam(I[I)I

    move-result v0

    .line 175
    .local v0, "ret":I
    sget-boolean v1, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 176
    sget-object v1, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readCfgParam dev over:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_1
    return v0
.end method

.method public static readGp2apValue()I
    .locals 4

    .prologue
    .line 249
    invoke-static {}, Landroid/os/MeizuDeviceContorl;->native_read_gp2ap()I

    move-result v0

    .line 250
    .local v0, "ret":I
    sget-boolean v1, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 251
    sget-object v1, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readGp2apValue--value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    return v0
.end method

.method public static readGravityValue([I)I
    .locals 2
    .param p0, "values"    # [I

    .prologue
    .line 224
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readGravityValue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceContorl;->native_read_gravity_value([I)I

    move-result v0

    return v0
.end method

.method public static resetCalibration()I
    .locals 4

    .prologue
    .line 87
    invoke-static {}, Landroid/os/MeizuDeviceContorl;->native_reset_calibration()I

    move-result v0

    .line 88
    .local v0, "ret":I
    sget-boolean v1, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 89
    sget-object v1, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetCalibration----value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    return v0
.end method

.method public static saveCPUfreq(I)I
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 60
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveCPUfreq----value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceContorl;->native_save_cpu_value(I)I

    move-result v0

    return v0
.end method

.method public static saveKeyWakeupType(I)I
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 129
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveKeyWakeupType value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceContorl;->native_set_key_wakeup_type(I)I

    move-result v0

    return v0
.end method

.method public static setAutoCabc(I)I
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 101
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoCabc--value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceContorl;->native_set_auto_cabc(I)I

    move-result v0

    return v0
.end method

.method public static set_hdmi_cable_status(I)I
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 289
    sget-boolean v1, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 290
    sget-object v1, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set_hdmi_cable_status value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceContorl;->native_set_hdmi_cable_status(I)I

    move-result v0

    .line 293
    .local v0, "ret":I
    sget-boolean v1, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 294
    sget-object v1, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set_hdmi_cable_status--value overy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_1
    return v0
.end method

.method public static switchUsbFastCharger(I)I
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 143
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchUsbFastCharger value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceContorl;->native_switch_usb_fast_charger(I)I

    move-result v0

    return v0
.end method

.method public static updateLedBrightness(I)I
    .locals 7
    .param p0, "value"    # I

    .prologue
    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 280
    .local v1, "time":J
    invoke-static {p0}, Landroid/os/MeizuDeviceContorl;->native_update_led_brightness(I)I

    move-result v0

    .line 281
    .local v0, "ret":I
    sget-boolean v3, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 282
    sget-object v3, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateLedBrightness--value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "time cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    return v0
.end method

.method public static writeCfgParam(I[I)I
    .locals 3
    .param p0, "dev"    # I
    .param p1, "info"    # [I

    .prologue
    .line 157
    sget-boolean v0, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeCfgParam dev:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    invoke-static {p0, p1}, Landroid/os/MeizuDeviceContorl;->native_write_cfgparam(I[I)I

    move-result v0

    return v0
.end method

.method public static writeGp2apValue(I)I
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 263
    sget-boolean v1, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 264
    sget-object v1, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeGp2apValue value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    invoke-static {p0}, Landroid/os/MeizuDeviceContorl;->native_write_gp2ap(I)I

    move-result v0

    .line 267
    .local v0, "ret":I
    sget-boolean v1, Landroid/os/MeizuDeviceContorl;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 268
    sget-object v1, Landroid/os/MeizuDeviceContorl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeGp2apValue--value overy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_1
    return v0
.end method
