.class public Lcom/android/internal/telephony/gemini/GeminiPhone;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/telephony/Phone;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gemini/GeminiPhone$a;
    }
.end annotation


# static fields
.field protected static final EVENT_3G_SWITCH_SET_PREFERRED_NETWORK_MODE:I = 0x3

.field public static EVENT_BOOTUP_SIM_SWITCH_DONE:Ljava/lang/String; = null

.field protected static final EVENT_CONFIG_SIM_SWITCH_DONE:I = 0x9

.field protected static final EVENT_DUAL_SIM_SWITCH_DONE:I = 0x1

.field protected static final EVENT_GET_AVAILABLE_NW:I = 0x6

.field protected static final EVENT_GET_ICCID_FOR_SIM_HOT_SWAP_DONE:I = 0x5

.field protected static final EVENT_GET_NETWORK_SELECTION_MODE:I = 0x4

.field protected static final EVENT_GPRS_DETACHED:I = 0x7

.field public static EVENT_INITIALIZATION_FRAMEWORK_DONE:Ljava/lang/String; = null

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x8

.field protected static final EVENT_SIM_INSERTED_STATUS:I = 0x2

.field public static final EXTRA_VALUE_NEW_SIM:Ljava/lang/String; = "NEW"

.field public static final EXTRA_VALUE_REMOVE_SIM:Ljava/lang/String; = "REMOVE"

.field public static final EXTRA_VALUE_SWAP_SIM:Ljava/lang/String; = "SWAP"

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"

.field public static final INTENT_KEY_NEW_SIM_SLOT:Ljava/lang/String; = "newSIMSlot"

.field public static final INTENT_KEY_SIM_COUNT:Ljava/lang/String; = "simCount"

.field public static final PREFERENCE_3G_SWITCH:Ljava/lang/String; = "com.mtk.3G_SWITCH"

.field public static final PREF_3G_SIM_ID:Ljava/lang/String; = "3G_SIM_ID"

.field public static final PROPERTY_3G_SWITCH:Ljava/lang/String; = "gsm.3gswitch"

.field public static final PROPERTY_SIM_SWITCH:Ljava/lang/String; = "ro.gemini.sim_switch_policy"

.field public static final PROPERTY_SMART_3G_SWITCH:Ljava/lang/String; = "ro.gemini.smart_3g_switch"

.field protected static final STATUS_DUAL_SIM_INSERTED:I = 0x3

.field protected static final STATUS_NO_SIM_INSERTED:I = 0x0

.field protected static final STATUS_QUAD_SIM_INSERTED:I = 0xf

.field protected static final STATUS_SIM1_INSERTED:I = 0x1

.field protected static final STATUS_SIM2_INSERTED:I = 0x2

.field protected static final STATUS_SIM3_INSERTED:I = 0x4

.field protected static final STATUS_SIM4_INSERTED:I = 0x8

.field protected static final STATUS_TRIPLE_SIM_INSERTED:I = 0x7

.field private static aD:Landroid/content/SharedPreferences;

.field private static final aN:[I


# instance fields
.field private L:[Ljava/lang/String;

.field private aA:I

.field private aB:Z

.field private aC:Z

.field private aE:I

.field private aF:Landroid/os/PowerManager$WakeLock;

.field private aG:Z

.field private aH:Z

.field private aI:Z

.field private aJ:Z

.field private aK:I

.field private aL:I

.field private aM:I

.field private aO:[Ljava/lang/String;

.field private aP:Z

.field private aQ:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

.field private aR:Ljava/lang/Runnable;

.field private aS:Ljava/lang/Runnable;

.field private aT:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

.field private aU:Ljava/lang/Runnable;

.field private al:Lcom/android/internal/telephony/Phone;

.field private am:[Lcom/android/internal/telephony/Phone;

.field private an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

.field private ao:I

.field private ap:I

.field private aq:I

.field private ar:I

.field private as:I

.field private at:I

.field au:Lcom/mediatek/common/telephony/ISimInfoUpdate;

.field private av:Landroid/os/RegistrantList;

.field private aw:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

.field private ax:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

.field private ay:Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;

.field private az:Lcom/mediatek/common/telephony/ITelephonyExt;

.field private mContext:Landroid/content/Context;

.field public mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 216
    const-string v0, "com.mtk.EVENT_INITIALIZATION_FRAMEWORK_DONE"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_INITIALIZATION_FRAMEWORK_DONE:Ljava/lang/String;

    .line 239
    const-string v0, "com.mtk.BOOTUP_SIM_SWITCH_DONE"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_BOOTUP_SIM_SWITCH_DONE:Ljava/lang/String;

    .line 271
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aN:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 299
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 166
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    .line 181
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    .line 183
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:I

    .line 184
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ar:I

    .line 185
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    .line 187
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->as:I

    .line 188
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:I

    .line 191
    iput-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    .line 193
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:Landroid/os/RegistrantList;

    .line 244
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aA:I

    .line 254
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aI:Z

    .line 258
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aJ:Z

    .line 259
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aK:I

    .line 267
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aL:I

    .line 270
    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aM:I

    .line 273
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ril.iccid.sim1"

    aput-object v1, v0, v3

    const-string v1, "ril.iccid.sim2"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "ril.iccid.sim3"

    aput-object v2, v0, v1

    const-string v1, "ril.iccid.sim4"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aO:[Ljava/lang/String;

    .line 718
    new-instance v0, Lcom/android/internal/telephony/gemini/e;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/e;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aR:Ljava/lang/Runnable;

    .line 993
    new-instance v0, Lcom/android/internal/telephony/gemini/a;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aS:Ljava/lang/Runnable;

    .line 3057
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    invoke-direct {v0, p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/gemini/e;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aT:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    .line 3366
    new-instance v0, Lcom/android/internal/telephony/gemini/c;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/c;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aU:Ljava/lang/Runnable;

    .line 300
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aput-object p1, v0, v3

    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aput-object p2, v0, v5

    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p3

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    .line 304
    iput-boolean v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aI:Z

    .line 306
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    .line 308
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g()V

    .line 316
    :cond_0
    :goto_0
    :try_start_0
    const-class v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:Lcom/mediatek/common/telephony/ISimInfoUpdate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_1
    :try_start_1
    const-class v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->az:Lcom/mediatek/common/telephony/ITelephonyExt;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 326
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    .line 329
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->checkRadioOffSIM(Landroid/content/Context;)V

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeminiPhone initizlization to initialize telephony framework ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 333
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    .line 336
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->v()V

    .line 341
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->w()V

    .line 343
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j()V

    .line 344
    return-void

    .line 310
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h()V

    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 322
    :catch_1
    move-exception v0

    .line 323
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 346
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 166
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    .line 181
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    .line 183
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:I

    .line 184
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ar:I

    .line 185
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    .line 187
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->as:I

    .line 188
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:I

    .line 191
    iput-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    .line 193
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:Landroid/os/RegistrantList;

    .line 244
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aA:I

    .line 254
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aI:Z

    .line 258
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aJ:Z

    .line 259
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aK:I

    .line 267
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aL:I

    .line 270
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aM:I

    .line 273
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ril.iccid.sim1"

    aput-object v1, v0, v2

    const-string v1, "ril.iccid.sim2"

    aput-object v1, v0, v3

    const-string v1, "ril.iccid.sim3"

    aput-object v1, v0, v4

    const-string v1, "ril.iccid.sim4"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aO:[Ljava/lang/String;

    .line 718
    new-instance v0, Lcom/android/internal/telephony/gemini/e;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/e;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aR:Ljava/lang/Runnable;

    .line 993
    new-instance v0, Lcom/android/internal/telephony/gemini/a;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aS:Ljava/lang/Runnable;

    .line 3057
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    invoke-direct {v0, p0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/gemini/e;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aT:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    .line 3366
    new-instance v0, Lcom/android/internal/telephony/gemini/c;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/c;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aU:Ljava/lang/Runnable;

    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aput-object p1, v0, v2

    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aput-object p2, v0, v3

    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aput-object p3, v0, v4

    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p4

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    .line 352
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aI:Z

    .line 354
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    .line 356
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g()V

    .line 362
    :cond_0
    :goto_0
    :try_start_0
    const-class v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:Lcom/mediatek/common/telephony/ISimInfoUpdate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_1
    :try_start_1
    const-class v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->az:Lcom/mediatek/common/telephony/ITelephonyExt;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 372
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    .line 375
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->checkRadioOffSIM(Landroid/content/Context;)V

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeminiPhone initizlization to initialize telephony framework ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 379
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    .line 382
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->v()V

    .line 387
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->w()V

    .line 389
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j()V

    .line 390
    return-void

    .line 358
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h()V

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 368
    :catch_1
    move-exception v0

    .line 369
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 392
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 166
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    .line 181
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    .line 183
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:I

    .line 184
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ar:I

    .line 185
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    .line 187
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->as:I

    .line 188
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->at:I

    .line 191
    iput-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    .line 193
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:Landroid/os/RegistrantList;

    .line 244
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aA:I

    .line 254
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aI:Z

    .line 258
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aJ:Z

    .line 259
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aK:I

    .line 267
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aL:I

    .line 270
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aM:I

    .line 273
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ril.iccid.sim1"

    aput-object v1, v0, v2

    const-string v1, "ril.iccid.sim2"

    aput-object v1, v0, v3

    const-string v1, "ril.iccid.sim3"

    aput-object v1, v0, v5

    const-string v1, "ril.iccid.sim4"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aO:[Ljava/lang/String;

    .line 718
    new-instance v0, Lcom/android/internal/telephony/gemini/e;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/e;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aR:Ljava/lang/Runnable;

    .line 993
    new-instance v0, Lcom/android/internal/telephony/gemini/a;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aS:Ljava/lang/Runnable;

    .line 3057
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    invoke-direct {v0, p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/gemini/e;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aT:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    .line 3366
    new-instance v0, Lcom/android/internal/telephony/gemini/c;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/c;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aU:Ljava/lang/Runnable;

    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aput-object p1, v0, v2

    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aput-object p2, v0, v3

    .line 395
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aput-object p3, v0, v5

    .line 396
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aput-object p4, v0, v4

    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p5

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    .line 399
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aI:Z

    .line 401
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    .line 403
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 404
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g()V

    .line 409
    :cond_0
    :goto_0
    :try_start_0
    const-class v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:Lcom/mediatek/common/telephony/ISimInfoUpdate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :goto_1
    :try_start_1
    const-class v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->az:Lcom/mediatek/common/telephony/ITelephonyExt;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 419
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    .line 422
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->checkRadioOffSIM(Landroid/content/Context;)V

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeminiPhone initizlization to initialize telephony framework ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 426
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    .line 429
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->v()V

    .line 434
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->w()V

    .line 436
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j()V

    .line 437
    return-void

    .line 405
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h()V

    goto :goto_0

    .line 410
    :catch_0
    move-exception v0

    .line 411
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 415
    :catch_1
    move-exception v0

    .line 416
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z
    .locals 0

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aJ:Z

    return p1
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z
    .locals 0

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Z

    return p1
.end method

.method static synthetic c(Lcom/android/internal/telephony/gemini/GeminiPhone;I)Z
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j(I)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/android/internal/telephony/gemini/GeminiPhone;I)Z
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g(I)Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/android/internal/telephony/gemini/GeminiPhone;)I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aM:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aM:I

    return v0
.end method

.method private e(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "To register SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inserted status notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhoneTypeGemini(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1096
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 1097
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 1098
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aP:Z

    .line 1099
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 1100
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1108
    :goto_0
    return-void

    .line 1101
    :cond_0
    if-ltz p1, :cond_1

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge p1, v0, :cond_1

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "To re-register SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inserted status notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1103
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    .line 1104
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->registerForSimInsertedStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 1106
    :cond_1
    const-string v0, "To re-register invalid phone inserted status notification"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j()V

    return-void
.end method

.method private f()Z
    .locals 1

    .prologue
    new-instance v0, Lcom/mediatek/common/jpe/a;

    invoke-direct {v0}, Lcom/mediatek/common/jpe/a;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/common/jpe/a;->a()V

    .line 3508
    const/4 v0, 0x1

    return v0
.end method

.method private g()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 450
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->q()I

    move-result v3

    .line 453
    :try_start_0
    const-class v0, Lcom/mediatek/common/telephony/ISimSwitchPolicyWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISimSwitchPolicyWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :try_start_1
    const-string v1, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISimSwitchPolicyWrapper created (mSimSwitchPolicyWrapper="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 460
    :goto_0
    if-nez v0, :cond_0

    .line 461
    const-string v0, "PHONE"

    const-string v1, "Sim Switch Policy Wrapper Missing (mSimSwitchPolicyWrapper=null), Sim Switch Policy objects not created."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :goto_1
    return-void

    .line 455
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 456
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 457
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISimSwitchPolicyWrapper create exception (mSimSwitchPolicyWrapper="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    .line 463
    :cond_0
    const/4 v1, 0x1

    if-ne v3, v1, :cond_1

    .line 464
    const-string v1, "DEFAULT"

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ISimSwitchPolicyWrapper;->createInstance(Ljava/lang/String;)Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    .line 469
    :goto_3
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISimSwitchPolicy created (policyId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSimSwitchPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 465
    :cond_1
    const/4 v1, 0x2

    if-ne v3, v1, :cond_2

    .line 466
    const-string v1, "OP"

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ISimSwitchPolicyWrapper;->createInstance(Ljava/lang/String;)Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    goto :goto_3

    .line 468
    :cond_2
    iput-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    goto :goto_3

    .line 455
    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method

.method static synthetic g(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()V

    return-void
.end method

.method private g(I)Z
    .locals 7

    .prologue
    const/16 v4, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3146
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aC:Z

    .line 3150
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3152
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->u()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    .line 3154
    :cond_0
    const-string v0, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "force3GSwitch (DT) result=false. (3g capability num="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->u()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", SIM_NUM="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v5, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    move v4, v2

    .line 3194
    :goto_0
    if-eqz v4, :cond_a

    .line 3195
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v2, v0, :cond_9

    .line 3196
    if-ne p1, v2, :cond_8

    .line 3197
    const-string v0, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "force3GSwitch:setPreferredNetworkType:Auto("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "),GSM only ,sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    .line 3195
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3158
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimSwitchSwapped()Z

    move-result v6

    .line 3159
    if-nez p1, :cond_b

    .line 3160
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3162
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMaxPreferredNetworkType(I)I

    move-result v3

    .line 3163
    if-nez v6, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->configSimSwitch(ZLandroid/os/Message;)Z

    move-result v5

    .line 3164
    if-eqz v5, :cond_2

    .line 3165
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    .line 3166
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    :cond_2
    move v0, v3

    move v3, v5

    .line 3170
    :goto_4
    if-ne v1, p1, :cond_4

    .line 3171
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3173
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMaxPreferredNetworkType(I)I

    move-result v3

    .line 3174
    if-nez v6, :cond_6

    move v0, v1

    :goto_5
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->configSimSwitch(ZLandroid/os/Message;)Z

    move-result v4

    .line 3175
    if-eqz v4, :cond_3

    .line 3176
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    .line 3177
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    :cond_3
    move v0, v3

    move v3, v4

    .line 3182
    :cond_4
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "force3GSwitch (DT) configSimSwitch result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    move v3, v0

    .line 3183
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 3163
    goto :goto_3

    :cond_6
    move v0, v2

    .line 3174
    goto :goto_5

    .line 3188
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    .line 3190
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v3

    .line 3191
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMaxPreferredNetworkType(I)I

    move-result v0

    .line 3192
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v4, v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/Phone;->set3GCapabilitySIM(I)Z

    move-result v3

    move v4, v3

    move v3, v0

    goto/16 :goto_0

    .line 3200
    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    goto/16 :goto_2

    .line 3203
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/internal/telephony/TelephonyIntents;->EVENT_CAPABILITY_SWITCH_START_MD_RESET:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3204
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)V

    .line 3210
    :goto_6
    return v4

    .line 3206
    :cond_a
    const-string v0, "PHONE"

    const-string v2, "force3GSwitch else case"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aC:Z

    .line 3208
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->t()V

    goto :goto_6

    :cond_b
    move v0, v4

    move v3, v2

    goto/16 :goto_4
.end method

.method public static get3GSimId()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2910
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2911
    const-string v1, "gsm.3gswitch"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2912
    if-lez v1, :cond_1

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-gt v1, v2, :cond_1

    .line 2913
    add-int/lit8 v0, v1, -0x1

    .line 2933
    :cond_0
    :goto_0
    return v0

    .line 2915
    :cond_1
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get3GSimId() got invalid property value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2921
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2922
    const-string v1, "ril.simswitch.mode"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2924
    :cond_3
    const-string v1, "gsm.3gswitch"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2925
    if-lez v0, :cond_4

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-gt v0, v1, :cond_4

    .line 2926
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2928
    :cond_4
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get3GSimId() got invalid property value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private h(I)I
    .locals 14

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 3220
    const/4 v13, -0x1

    .line 3221
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v2, "com.mtk.3G_SWITCH"

    invoke-virtual {v0, v2, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3222
    const-string v2, "3G_SIM_ICCID"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3223
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCapabilitySIM(I)I

    move-result v4

    .line 3224
    const-string v0, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check if need to do bootup 3G Switch ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "] "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 3226
    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 3227
    const-string v2, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSimInsertedStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mIccId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3231
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Z

    if-nez v0, :cond_2

    .line 3232
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3233
    const/4 v0, -0x1

    .line 3234
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    if-eqz v2, :cond_6

    .line 3237
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v10, :cond_14

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v0, v9

    :goto_1
    move-object v5, v0

    .line 3238
    :goto_2
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v11, :cond_13

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v0, v10

    :goto_3
    move-object v6, v0

    .line 3239
    :goto_4
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v12, :cond_12

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v0, v11

    :goto_5
    move-object v7, v0

    .line 3240
    :goto_6
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v2, 0x4

    if-lt v0, v2, :cond_11

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v1, v0, v12

    :cond_1
    move-object v8, v1

    .line 3242
    :goto_7
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    move v2, p1

    invoke-interface/range {v0 .. v8}, Lcom/mediatek/common/telephony/ISimSwitchPolicy;->selectCapabilitySim(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3249
    :goto_8
    sparse-switch v0, :sswitch_data_0

    move v9, v13

    .line 3279
    :goto_9
    :sswitch_0
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "targetSIM simIdx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", selected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v9

    .line 3328
    :cond_2
    :goto_a
    return v13

    :cond_3
    move-object v0, v1

    .line 3237
    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 3238
    goto :goto_3

    :cond_5
    move-object v0, v1

    .line 3239
    goto :goto_5

    .line 3246
    :cond_6
    const-string v1, "PHONE"

    const-string v2, "no Sim switch policy instance. (mSimSwitchPolicy null)"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :sswitch_1
    move v9, v10

    .line 3256
    goto :goto_9

    :sswitch_2
    move v9, v11

    .line 3260
    goto :goto_9

    :sswitch_3
    move v9, v12

    .line 3264
    goto :goto_9

    .line 3267
    :sswitch_4
    const/4 v9, -0x2

    .line 3268
    goto :goto_9

    .line 3271
    :sswitch_5
    const/4 v9, -0x1

    .line 3272
    goto :goto_9

    .line 3281
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ltz v4, :cond_2

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v4, v0, :cond_2

    .line 3282
    const/4 v0, -0x1

    .line 3283
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    if-eqz v2, :cond_c

    .line 3286
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v10, :cond_10

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v0, v9

    :goto_b
    move-object v5, v0

    .line 3287
    :goto_c
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v11, :cond_f

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v0, v10

    :goto_d
    move-object v6, v0

    .line 3288
    :goto_e
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v12, :cond_e

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v0, v11

    :goto_f
    move-object v7, v0

    .line 3289
    :goto_10
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v2, 0x4

    if-lt v0, v2, :cond_d

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v1, v0, v12

    :cond_8
    move-object v8, v1

    .line 3291
    :goto_11
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface/range {v1 .. v8}, Lcom/mediatek/common/telephony/ISwitch3GPolicy;->select3GCapability(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3298
    :goto_12
    sparse-switch v0, :sswitch_data_1

    move v9, v13

    .line 3324
    :goto_13
    :sswitch_6
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "target3GSIM simIdx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", selected3G="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v9

    goto/16 :goto_a

    :cond_9
    move-object v0, v1

    .line 3286
    goto :goto_b

    :cond_a
    move-object v0, v1

    .line 3287
    goto :goto_d

    :cond_b
    move-object v0, v1

    .line 3288
    goto :goto_f

    .line 3295
    :cond_c
    const-string v1, "PHONE"

    const-string v2, "no 3g switch policy instance. (mSwitch3GPolicy null)"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :sswitch_7
    move v9, v10

    .line 3305
    goto :goto_13

    :sswitch_8
    move v9, v11

    .line 3309
    goto :goto_13

    :sswitch_9
    move v9, v12

    .line 3313
    goto :goto_13

    .line 3316
    :sswitch_a
    const/4 v9, -0x1

    .line 3317
    goto :goto_13

    :cond_d
    move-object v8, v1

    goto :goto_11

    :cond_e
    move-object v7, v1

    goto :goto_10

    :cond_f
    move-object v6, v1

    goto :goto_e

    :cond_10
    move-object v5, v1

    goto :goto_c

    :cond_11
    move-object v8, v1

    goto/16 :goto_7

    :cond_12
    move-object v7, v1

    goto/16 :goto_6

    :cond_13
    move-object v6, v1

    goto/16 :goto_4

    :cond_14
    move-object v5, v1

    goto/16 :goto_2

    .line 3249
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x15 -> :sswitch_5
        0x16 -> :sswitch_4
    .end sparse-switch

    .line 3298
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_7
        0x3 -> :sswitch_8
        0x4 -> :sswitch_9
        0x15 -> :sswitch_a
    .end sparse-switch
.end method

.method private h()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 473
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->s()I

    move-result v3

    .line 476
    :try_start_0
    const-class v0, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :try_start_1
    const-string v1, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISwitch3GPolicyWrapper created (mSwitch3GPolicyWrapper="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 483
    :goto_0
    if-nez v0, :cond_0

    .line 484
    const-string v0, "PHONE"

    const-string v1, "Switch 3G Policy Wrapper Missing (mSwitch3GPolicyWrapper=null), Switch 3G Policy objects not created."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :goto_1
    return-void

    .line 478
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 479
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 480
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISwitch3GPolicyWrapper create exception (mSwitch3GPolicyWrapper="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    .line 486
    :cond_0
    const/4 v1, 0x1

    if-ne v3, v1, :cond_1

    .line 487
    const-string v1, "DEFAULT"

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;->createInstance(Ljava/lang/String;)Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    .line 492
    :goto_3
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISwitch3GPolicy created (policyId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSwitch3GPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 488
    :cond_1
    const/4 v1, 0x2

    if-ne v3, v1, :cond_2

    .line 489
    const-string v1, "OP"

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ISwitch3GPolicyWrapper;->createInstance(Ljava/lang/String;)Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    goto :goto_3

    .line 491
    :cond_2
    iput-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    goto :goto_3

    .line 478
    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method

.method static synthetic h(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceCall,mSimInsertedStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 562
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x8

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    if-eq v0, v1, :cond_0

    .line 585
    :goto_0
    return-void

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_internet_call_value"

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoiceCall,defaultSim:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 571
    cmp-long v0, v4, v0

    if-nez v0, :cond_2

    .line 572
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 574
    if-eqz v0, :cond_1

    .line 575
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_call_sim_setting"

    iget-wide v3, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoiceCall,simid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 582
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceCall,defaultSim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_call_sim_setting"

    const-wide/16 v3, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 580
    :cond_2
    const-string v0, "setVoiceCall else"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private i(I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 3332
    const/4 v1, 0x0

    .line 3333
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v3, "com.mtk.3G_SWITCH"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3334
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 3336
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 3338
    const-string v0, "PHONE"

    const-string v1, "Just turn off 3G capability. not to store ICCID"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    :goto_0
    return-void

    :cond_0
    move v4, v0

    move-object v0, v1

    move v1, v4

    .line 3342
    :goto_1
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v3, :cond_2

    .line 3343
    if-ne p1, v1, :cond_1

    .line 3344
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 3342
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3347
    :cond_2
    const-string v1, "3G_SIM_ID"

    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3349
    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    if-eqz v1, :cond_3

    .line 3350
    const-string v1, "3G_SIM_ICCID"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3351
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3352
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current 3G SIM ICCID ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3354
    :cond_3
    const-string v0, "PHONE"

    const-string v1, "No SIM inserted, not to store ICCID"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic i(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic j(Lcom/android/internal/telephony/gemini/GeminiPhone;)I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    return v0
.end method

.method private j()V
    .locals 11

    .prologue
    const/4 v4, 0x2

    const/4 v10, -0x2

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 727
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aG:Z

    .line 728
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f()Z

    move v0, v1

    .line 729
    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 730
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aO:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v0

    .line 729
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 734
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v2, v0, :cond_2e

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIccId"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ":["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isRadioAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v3

    .line 742
    :goto_2
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aM:I

    sget-object v6, Lcom/android/internal/telephony/gemini/GeminiPhone;->aN:[I

    array-length v6, v6

    if-ge v2, v6, :cond_3

    if-eqz v0, :cond_3

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RILD initialize not completed, wait for it,counter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->aN:[I

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aM:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aR:Ljava/lang/Runnable;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->aN:[I

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aM:I

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 865
    :goto_3
    return-void

    .line 734
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 748
    :cond_3
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aM:I

    .line 749
    const-string v0, "start telephony framework initialization"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 751
    :goto_4
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_5

    .line 752
    const-string v2, "N/A"

    iget-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 753
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v6, v2, v0

    .line 751
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 755
    :cond_5
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    move v2, v1

    .line 757
    :goto_5
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v2, v0, :cond_d

    .line 758
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_7

    const-string v0, ""

    iget-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 759
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    shl-int v6, v3, v2

    or-int/2addr v0, v6

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    .line 760
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v0

    if-ne v0, v3, :cond_6

    .line 761
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aL:I

    shl-int v6, v3, v2

    or-int/2addr v0, v6

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aL:I

    .line 763
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 765
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isRildReadIMSIEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gsm.sim.ril.op"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v2, :cond_b

    const-string v0, ""

    :goto_6
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 767
    const-string v0, ""

    .line 768
    iget-object v7, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v7, v7, v2

    if-eqz v7, :cond_9

    const-string v7, ""

    iget-object v8, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gsm.sim.ril.mcc.mnc"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v2, :cond_c

    const-string v0, ""

    :goto_7
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 770
    const-string v7, ""

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 771
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->convertImsi2Op(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 772
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "convertImsi2Op (simIdx="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", opStr="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", numeric="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 774
    :cond_9
    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set sim op property (simIdx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", opStr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", propName="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 777
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v2, v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->setSIMIccId(ILjava/lang/String;)V

    .line 757
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_5

    .line 766
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 769
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 779
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InsertedStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    move v0, v4

    .line 780
    :goto_8
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_e

    .line 781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIccId[SIM"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "]:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 780
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 783
    :cond_e
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->x()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 784
    const-string v0, "[IRC] Stop initializeTelephonyFramework, start switch phone."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 785
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->y()V

    goto/16 :goto_3

    .line 789
    :cond_f
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Z

    if-eqz v0, :cond_10

    .line 790
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aA:I

    const/16 v2, -0x63

    if-ne v0, v2, :cond_13

    .line 791
    const-string v0, "Initialize telephony framework and finish 3G Switch [target radio mode invalid]"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 798
    :cond_10
    :goto_9
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 799
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v2

    if-eqz v2, :cond_11

    if-nez v0, :cond_1e

    .line 802
    :cond_11
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->u()I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 803
    const-string v0, "Not support now for dual talk about two modem both support 3G or 4G"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 864
    :cond_12
    :goto_a
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aG:Z

    goto/16 :goto_3

    .line 793
    :cond_13
    const-string v0, "Initialize telephony framework and finish 3G Switch"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 794
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->t()V

    goto :goto_9

    .line 807
    :cond_14
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteSupport()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x3

    move v2, v0

    .line 808
    :goto_b
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCapabilitySIM(I)I

    move-result v6

    .line 809
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(I)I

    move-result v4

    .line 810
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isBspPackage()Z

    move-result v0

    if-nez v0, :cond_1d

    if-eqz v4, :cond_15

    if-ne v4, v3, :cond_16

    :cond_15
    if-ne v6, v4, :cond_17

    :cond_16
    if-ne v4, v10, :cond_1d

    if-eq v6, v5, :cond_1d

    .line 811
    :cond_17
    if-ne v4, v10, :cond_2d

    if-eq v6, v5, :cond_2d

    move v0, v5

    .line 814
    :goto_c
    if-eq v6, v5, :cond_18

    if-eq v0, v5, :cond_19

    :cond_18
    if-ne v6, v5, :cond_2c

    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v4

    if-ne v0, v4, :cond_2c

    .line 817
    :cond_19
    :goto_d
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setCapabilitySIM(II)Z

    move-result v0

    .line 818
    if-eqz v0, :cond_1a

    if-eqz v3, :cond_12

    .line 823
    :cond_1a
    if-eqz v0, :cond_1b

    if-eqz v3, :cond_1b

    .line 824
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)V

    .line 826
    :cond_1b
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l()V

    goto :goto_a

    :cond_1c
    move v2, v3

    .line 807
    goto :goto_b

    .line 829
    :cond_1d
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)V

    .line 830
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l()V

    goto :goto_a

    .line 834
    :cond_1e
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_1f
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v2

    if-eqz v2, :cond_20

    if-nez v0, :cond_29

    .line 835
    :cond_20
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteSupport()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x3

    move v2, v0

    .line 836
    :goto_e
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCapabilitySIM(I)I

    move-result v6

    .line 837
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(I)I

    move-result v4

    .line 838
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isBspPackage()Z

    move-result v0

    if-nez v0, :cond_28

    if-ltz v4, :cond_21

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v4, v0, :cond_21

    if-ne v6, v4, :cond_22

    :cond_21
    if-ne v4, v10, :cond_28

    if-eq v6, v5, :cond_28

    .line 839
    :cond_22
    if-ne v4, v10, :cond_2b

    if-eq v6, v5, :cond_2b

    move v0, v5

    .line 842
    :goto_f
    if-eq v6, v5, :cond_23

    if-eq v0, v5, :cond_24

    :cond_23
    if-ne v6, v5, :cond_2a

    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v4

    if-ne v0, v4, :cond_2a

    .line 845
    :cond_24
    :goto_10
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setCapabilitySIM(II)Z

    move-result v0

    .line 846
    if-eqz v0, :cond_26

    if-nez v3, :cond_26

    .line 847
    const-string v0, "To re-register SIM inserted status notification just after doing 3G switch"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 848
    :goto_11
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_12

    .line 849
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    .line 848
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_25
    move v2, v3

    .line 835
    goto :goto_e

    .line 852
    :cond_26
    if-eqz v0, :cond_27

    if-eqz v3, :cond_27

    .line 853
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)V

    .line 855
    :cond_27
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l()V

    goto/16 :goto_a

    .line 858
    :cond_28
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)V

    .line 859
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l()V

    goto/16 :goto_a

    .line 862
    :cond_29
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l()V

    goto/16 :goto_a

    :cond_2a
    move v3, v1

    goto :goto_10

    :cond_2b
    move v0, v4

    goto :goto_f

    :cond_2c
    move v3, v1

    goto/16 :goto_d

    :cond_2d
    move v0, v4

    goto/16 :goto_c

    :cond_2e
    move v0, v1

    goto/16 :goto_2
.end method

.method private j(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x3

    .line 3442
    if-nez p1, :cond_2

    .line 3443
    const-string v2, "gsm.baseband.capability"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v3, :cond_1

    .line 3447
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 3443
    goto :goto_0

    .line 3444
    :cond_2
    if-ne v0, p1, :cond_3

    .line 3445
    const-string v2, "gsm.baseband.capability2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 3447
    goto :goto_0
.end method

.method static synthetic k(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aF:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private k()V
    .locals 11

    .prologue
    const/4 v3, 0x3

    const/4 v10, -0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 868
    const-string v0, "start telephony framework initialization for sim hot swap"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 869
    iput-boolean v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aG:Z

    .line 873
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v0

    if-ne v0, v4, :cond_2

    .line 874
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aJ:Z

    if-eqz v0, :cond_1

    .line 875
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aK:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aK:I

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM Count = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aK:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mDualSimHotPlugStatus = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aL:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 877
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aK:I

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aL:I

    if-nez v0, :cond_5

    .line 879
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aJ:Z

    .line 880
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aS:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 889
    :cond_1
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aK:I

    :cond_2
    move v0, v1

    .line 895
    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_9

    .line 896
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    shl-int v6, v4, v0

    and-int/2addr v2, v6

    if-nez v2, :cond_6

    .line 897
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v6, v2, v0

    .line 901
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isRildReadIMSIEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 902
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gsm.sim.ril.op"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v0, :cond_7

    const-string v2, ""

    :goto_2
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 903
    const-string v2, ""

    .line 904
    iget-object v7, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v7, v7, v0

    if-eqz v7, :cond_3

    const-string v7, ""

    iget-object v8, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gsm.sim.ril.mcc.mnc"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v0, :cond_8

    const-string v2, ""

    :goto_3
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 906
    const-string v7, ""

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 907
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->convertImsi2Op(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 908
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "convertImsi2Op (simIdx="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", opStr="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", numeric="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 910
    :cond_3
    invoke-static {v6, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set sim op property (simIdx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", opStr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", propName="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 895
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 882
    :cond_5
    const-string v0, "Wait for other SIM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aS:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 885
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aS:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 991
    :goto_4
    return-void

    .line 899
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aO:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v0

    goto/16 :goto_1

    .line 902
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 905
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "."

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 915
    :cond_9
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Z

    if-eqz v0, :cond_a

    .line 916
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aA:I

    const/16 v2, -0x63

    if-ne v0, v2, :cond_d

    .line 917
    const-string v0, "Initialize telephony framework and finish 3G Switch [target radio mode invalid]"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 924
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 925
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v2

    if-eqz v2, :cond_b

    if-nez v0, :cond_18

    .line 928
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->u()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_e

    .line 929
    const-string v0, "Not support now for dual talk about two modem both support 3G or 4G"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 990
    :cond_c
    :goto_6
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aG:Z

    goto :goto_4

    .line 919
    :cond_d
    const-string v0, "Initialize telephony framework and finish 3G Switch"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 920
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->t()V

    goto :goto_5

    .line 933
    :cond_e
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteSupport()Z

    move-result v0

    if-eqz v0, :cond_16

    move v2, v3

    .line 934
    :goto_7
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCapabilitySIM(I)I

    move-result v6

    .line 935
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(I)I

    move-result v3

    .line 936
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isBspPackage()Z

    move-result v0

    if-nez v0, :cond_17

    if-eqz v3, :cond_f

    if-ne v3, v4, :cond_10

    :cond_f
    if-ne v6, v3, :cond_11

    :cond_10
    if-ne v3, v10, :cond_17

    if-eq v6, v5, :cond_17

    .line 937
    :cond_11
    if-ne v3, v10, :cond_27

    if-eq v6, v5, :cond_27

    move v0, v5

    .line 940
    :goto_8
    if-eq v6, v5, :cond_12

    if-eq v0, v5, :cond_13

    :cond_12
    if-ne v6, v5, :cond_26

    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v3

    if-ne v0, v3, :cond_26

    .line 943
    :cond_13
    :goto_9
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setCapabilitySIM(II)Z

    move-result v0

    .line 944
    if-eqz v0, :cond_14

    if-eqz v4, :cond_c

    .line 949
    :cond_14
    if-eqz v0, :cond_15

    if-eqz v4, :cond_15

    .line 950
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)V

    .line 952
    :cond_15
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l()V

    goto :goto_6

    :cond_16
    move v2, v4

    .line 933
    goto :goto_7

    .line 955
    :cond_17
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)V

    .line 956
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l()V

    goto :goto_6

    .line 960
    :cond_18
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v2

    if-nez v2, :cond_19

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_19
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v2

    if-eqz v2, :cond_1a

    if-nez v0, :cond_23

    .line 961
    :cond_1a
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteSupport()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 962
    :goto_a
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCapabilitySIM(I)I

    move-result v6

    .line 963
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(I)I

    move-result v2

    .line 964
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isBspPackage()Z

    move-result v0

    if-nez v0, :cond_22

    if-ltz v2, :cond_1b

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v2, v0, :cond_1b

    if-ne v6, v2, :cond_1c

    :cond_1b
    if-ne v2, v10, :cond_22

    if-eq v6, v5, :cond_22

    .line 965
    :cond_1c
    if-ne v2, v10, :cond_25

    if-eq v6, v5, :cond_25

    move v0, v5

    .line 968
    :goto_b
    if-eq v6, v5, :cond_1d

    if-eq v0, v5, :cond_1e

    :cond_1d
    if-ne v6, v5, :cond_24

    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v2

    if-ne v0, v2, :cond_24

    .line 971
    :cond_1e
    :goto_c
    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setCapabilitySIM(II)Z

    move-result v0

    .line 972
    if-eqz v0, :cond_20

    if-nez v4, :cond_20

    .line 973
    const-string v0, "To re-register SIM inserted status notification just after doing 3G switch"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 974
    :goto_d
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_c

    .line 975
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    .line 974
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1f
    move v3, v4

    .line 961
    goto :goto_a

    .line 978
    :cond_20
    if-eqz v0, :cond_21

    if-eqz v4, :cond_21

    .line 979
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)V

    .line 981
    :cond_21
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l()V

    goto/16 :goto_6

    .line 984
    :cond_22
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(I)V

    .line 985
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l()V

    goto/16 :goto_6

    .line 988
    :cond_23
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l()V

    goto/16 :goto_6

    :cond_24
    move v4, v1

    goto :goto_c

    :cond_25
    move v0, v2

    goto :goto_b

    :cond_26
    move v4, v1

    goto/16 :goto_9

    :cond_27
    move v0, v3

    goto/16 :goto_8
.end method

.method static synthetic l(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 1002
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aH:Z

    if-eqz v0, :cond_0

    .line 1003
    const-string v0, "Need to initialize framework again, abort update SIMInfo"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1004
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aH:Z

    .line 1005
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j()V

    .line 1032
    :goto_0
    return-void

    .line 1009
    :cond_0
    const-string v0, "start update SIM information"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1010
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ISimInfoUpdate;->broadcastSimInsertedStatusAdp(I)V

    .line 1011
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i()V

    .line 1014
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->m()V

    .line 1016
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1017
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1018
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiPhone$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/GeminiPhone$1;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone$1;->start()V

    .line 1031
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->o()V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1132
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1140
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1148
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1144
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    return-void
.end method

.method static synthetic m(Lcom/android/internal/telephony/gemini/GeminiPhone;)I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aA:I

    return v0
.end method

.method private m()V
    .locals 3

    .prologue
    .line 1035
    const-string v0, "persist.ril.gprs.setting"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gprs setting = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1037
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->p()I

    move-result v0

    .line 1038
    if-lez v0, :cond_1

    .line 1039
    const/4 v0, 0x0

    .line 1040
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1041
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1043
    :cond_0
    if-lez v0, :cond_2

    .line 1044
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setGeminiDataConnStateToActingState(I)V

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data is on and set SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to activating state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1052
    :cond_1
    :goto_0
    return-void

    .line 1046
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isPsAlwaysAttach()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1047
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->n()I

    move-result v0

    .line 1048
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setGeminiDataConnStateToActingState(I)V

    .line 1049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data is off and set SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to activating state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic n(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aU:Ljava/lang/Runnable;

    return-object v0
.end method

.method private o()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1068
    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aH:Z

    if-eqz v1, :cond_0

    .line 1069
    const-string v1, "Need to initialize framework again, abort initialize radio power"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1070
    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aH:Z

    .line 1071
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j()V

    .line 1091
    :goto_0
    return-void

    .line 1075
    :cond_0
    const-string v1, "start initializing radio power"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1077
    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aI:Z

    if-eqz v1, :cond_1

    .line 1078
    const-string v1, "query SIM Missing status for gemini card"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1079
    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aI:Z

    .line 1080
    :goto_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 1081
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->notifySimMissingStatus(Z)V

    .line 1080
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1085
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->finishRadioStatusInitialization([Ljava/lang/String;I)V

    .line 1086
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aC:Z

    .line 1088
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V

    .line 1089
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_INITIALIZATION_FRAMEWORK_DONE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1090
    const-string v0, "broadcast GeminiPhone.EVENT_INITIALIZATION_FRAMEWORK_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private p()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1111
    move v1, v0

    .line 1112
    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_1

    .line 1113
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1114
    add-int/lit8 v1, v1, 0x1

    .line 1112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1118
    :cond_1
    const-string v0, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInsertedSIMCount return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    return v1
.end method

.method private q()I
    .locals 2

    .prologue
    .line 2724
    const-string v0, "ro.gemini.sim_switch_policy"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static r()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2730
    const-string v1, "gsm.3gswitch"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()I
    .locals 2

    .prologue
    .line 2735
    const-string v0, "ro.gemini.smart_3g_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 3360
    const-string v0, "PHONE"

    const-string v1, "broadcast3GSwitchDoneEvent"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Z

    .line 3362
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aU:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3363
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aU:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3364
    return-void
.end method

.method private u()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 3430
    const/4 v0, 0x0

    .line 3431
    const-string v1, "gsm.baseband.capability"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3432
    const-string v2, "gsm.baseband.capability2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3433
    if-le v1, v3, :cond_0

    .line 3434
    const/4 v0, 0x1

    .line 3435
    :cond_0
    if-le v2, v3, :cond_1

    .line 3436
    add-int/lit8 v0, v0, 0x1

    .line 3437
    :cond_1
    return v0
.end method

.method private v()V
    .locals 7

    .prologue
    const/4 v1, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3757
    const-string v0, "createInternationalRoamingController"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 3758
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v0

    if-nez v0, :cond_0

    .line 3759
    const-class v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v3

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    aput-object p0, v1, v6

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aQ:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    .line 3765
    :goto_0
    return-void

    .line 3762
    :cond_0
    const-class v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v3

    aput-object v2, v1, v5

    aput-object p0, v1, v6

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aQ:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    goto :goto_0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 3768
    const-string v0, "createDefaultSmsSetting"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 3770
    :try_start_0
    const-class v0, Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ay:Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3775
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ay:Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;

    if-nez v0, :cond_0

    .line 3776
    const-string v0, "PHONE"

    const-string v1, "FAIL! initial IDefaultSmsSimSettingsExt"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3778
    :cond_0
    return-void

    .line 3771
    :catch_0
    move-exception v0

    .line 3772
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private x()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3788
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 3789
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneType()I

    move-result v3

    .line 3790
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v0, v2

    .line 3792
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IRC] needSwitchPhone phoneType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " iccid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 3793
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aQ:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v4, v0}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->needToBootOnGsm(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-ne v3, v1, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aQ:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v3, v0}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->needToBootOnCDMA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v1

    .line 3799
    :goto_1
    return v0

    .line 3790
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 3799
    goto :goto_1
.end method

.method private y()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3806
    const-string v0, "[IRC] doSwitchPhone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 3807
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aQ:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    const/4 v1, 0x2

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->switchPhone(IZ)I

    .line 3808
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aP:Z

    .line 3809
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aG:Z

    .line 3810
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    .line 3811
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    .line 3812
    return-void
.end method


# virtual methods
.method public abortEnableDedicateBearer(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 3880
    const/4 v0, 0x0

    .line 3881
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3882
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 3884
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->abortEnableDedicateBearer(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public abortFemtoCellList(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 3705
    const-string v0, "Geminiphone abortFemtoCellList()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3706
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->abortFemtoCellList(Landroid/os/Message;I)V

    .line 3707
    return-void
.end method

.method public abortFemtoCellList(Landroid/os/Message;I)V
    .locals 2

    .prologue
    .line 3720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abortFemtoCellList(),simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3721
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->abortFemtoCellList(Landroid/os/Message;)V

    .line 3722
    return-void
.end method

.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    .line 1950
    return-void
.end method

.method public acceptVtCallWithVoiceOnly()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptVtCallWithVoiceOnly()V

    .line 2019
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2361
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 2362
    return-void
.end method

.method public addConferenceMember(ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3824
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public cancelAvailableNetworks(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2129
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->cancelAvailableNetworksGemini(Landroid/os/Message;I)V

    .line 2130
    return-void
.end method

.method public cancelAvailableNetworksGemini(Landroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1459
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->cancelAvailableNetworks(Landroid/os/Message;)V

    .line 1460
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2510
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2511
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 2514
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2515
    return-void
.end method

.method public clearDataBearer()V
    .locals 0

    .prologue
    .line 3959
    return-void
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 1986
    return-void
.end method

.method public clearExtModemNvram()V
    .locals 0

    .prologue
    .line 3853
    return-void
.end method

.method public conference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1965
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    .line 1966
    return-void
.end method

.method public configSimSwitch(Z)Z
    .locals 1

    .prologue
    .line 3417
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->configSimSwitch(ZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public configSimSwitch(ZLandroid/os/Message;)Z
    .locals 1

    .prologue
    .line 3421
    invoke-static {}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->getInstance()Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->configSimSwitch(ZLcom/android/internal/telephony/gemini/GeminiPhone;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dialUpCsd(ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 3780
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->dialUpCsd(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableApnTypeGemini(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 2285
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public disableDedicateBearer(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 3864
    const/4 v0, 0x0

    .line 3865
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3866
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 3868
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->disableDedicateBearer(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public disableDnsCheck(Z)V
    .locals 1

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDnsCheck(Z)V

    .line 1753
    return-void
.end method

.method public disableDnsCheckGemini(ZI)V
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDnsCheckGemini(ZI)V

    .line 1401
    return-void
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 2238
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->au:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/ISimInfoUpdate;->disposeReceiverAdp()V

    .line 444
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->dispose()V

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    :cond_0
    return-void
.end method

.method public doGeneralSimAuthentication(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/Phone;->doGeneralSimAuthentication(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1718
    return-void
.end method

.method public doSimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2715
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->doSimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 2716
    return-void
.end method

.method public doUSimAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2719
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->doUSimAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2720
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 2290
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f()Z

    .line 2291
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableApnTypeGemini(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 1588
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f()Z

    .line 1590
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 2281
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public enableDedicateBearer(Ljava/lang/String;ZLcom/android/internal/telephony/dataconnection/QosStatus;Lcom/android/internal/telephony/dataconnection/TftStatus;)I
    .locals 2

    .prologue
    .line 3856
    const/4 v0, 0x0

    .line 3857
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3858
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 3860
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneProxy;->enableDedicateBearer(Ljava/lang/String;ZLcom/android/internal/telephony/dataconnection/QosStatus;Lcom/android/internal/telephony/dataconnection/TftStatus;)I

    move-result v0

    return v0
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    .line 1970
    return-void
.end method

.method public enableGPRSAlwaysAttachIfNecessary(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3453
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableGPRSAlwaysAttachIfNecessary( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3455
    if-gtz p1, :cond_1

    .line 3491
    :cond_0
    :goto_0
    return-void

    .line 3459
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v1, "com.mtk.GPRS"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3460
    const-string v1, "ATTACH_MODE"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3461
    const-string v2, "ATTACH_MODE_SIM"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3462
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set to GPRS mode ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3464
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3482
    :pswitch_0
    const-class v0, Lcom/mediatek/common/telephony/IGsmDCTExt;

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/IGsmDCTExt;

    .line 3483
    invoke-interface {v0}, Lcom/mediatek/common/telephony/IGsmDCTExt;->getPsAttachSimWhenRadioOn()I

    move-result v0

    .line 3484
    if-ltz v0, :cond_0

    shl-int v1, v6, v0

    and-int/2addr v1, p1

    if-lez v1, :cond_0

    .line 3485
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setGeminiDataConnStateToActingState(I)V

    .line 3486
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setPsAttach(I)V

    goto :goto_0

    .line 3466
    :pswitch_1
    if-ltz v0, :cond_0

    shl-int v1, v6, v0

    and-int/2addr v1, p1

    if-lez v1, :cond_0

    .line 3467
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setGeminiDataConnStateToActingState(I)V

    .line 3468
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setPsAttach(I)V

    goto :goto_0

    .line 3474
    :pswitch_2
    if-ltz v0, :cond_0

    shl-int v1, v6, v0

    and-int/2addr v1, p1

    if-lez v1, :cond_0

    .line 3475
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/PhoneProxy;->setGprsConnType(I)V

    goto/16 :goto_0

    .line 3464
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 2234
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    .prologue
    .line 2414
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    .line 2415
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    .line 1982
    return-void
.end method

.method f(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1175
    .line 1176
    if-nez p1, :cond_2

    .line 1177
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 1187
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimInserted["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1188
    return v0

    :cond_1
    move v0, v1

    .line 1177
    goto :goto_0

    .line 1178
    :cond_2
    if-ne p1, v0, :cond_3

    .line 1179
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1180
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 1181
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1182
    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 1183
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1185
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimInserted() got invalid simId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->loge(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public get3GCapabilitySIM()I
    .locals 1

    .prologue
    .line 2940
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCapabilitySIM(I)I

    move-result v0

    return v0
.end method

.method public get3GSwitchAllowed3GSlots()I
    .locals 1

    .prologue
    .line 2858
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getSimSwitchAllowedSlots()I

    move-result v0

    return v0
.end method

.method public getAccumulatedCallMeter(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2534
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAccumulatedCallMeter(Landroid/os/Message;)V

    .line 2535
    return-void
.end method

.method public getAccumulatedCallMeterMaximum(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2538
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAccumulatedCallMeterMaximum(Landroid/os/Message;)V

    .line 2539
    return-void
.end method

.method public getActiveApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnGemini(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3570
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypeGemini(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnTypeGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypesGemini(I)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnTypesGemini(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3695
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllCellInfoGemini(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1545
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getApnForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getApnForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApnForTypeGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getApnForTypeGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getAvailableNetworksGemini(Landroid/os/Message;I)V

    .line 2126
    return-void
.end method

.method public getAvailableNetworksGemini(Landroid/os/Message;I)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1439
    .line 1440
    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_3

    .line 1441
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isGprsDetached(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1446
    :goto_1
    if-eq v0, v1, :cond_0

    if-eq v0, p2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1448
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 1456
    :goto_2
    return-void

    .line 1440
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1450
    :cond_2
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1451
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1452
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 1453
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1454
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v3, 0x7

    invoke-virtual {v2, v0, p0, v3, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->registerForDetached(ILandroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getAvoidSYSList(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 3738
    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1993
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getBtConnectedSimId()I
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:I

    return v0
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    .prologue
    .line 2047
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2094
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 2096
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 2117
    return-void
.end method

.method public getCapabilitySIM(I)I
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v7, 0x3

    .line 2951
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteSupport()Z

    move-result v1

    if-nez v1, :cond_1

    if-ne p1, v7, :cond_1

    .line 2952
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeminiPhone getCapabilitySIM param error, return -1 ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteSupport()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 2995
    :cond_0
    :goto_0
    return v0

    .line 2956
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2958
    const-string v1, "gsm.baseband.capability"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2959
    const-string v3, "gsm.baseband.capability2"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2960
    const-string v4, "persist.gemini.sim_num"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-le v4, v5, :cond_2

    .line 2962
    const-string v0, "get3GCapabilitySIM (DT) does not support Gemini+"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logw(Ljava/lang/String;)V

    move v0, v2

    .line 2963
    goto :goto_0

    .line 2966
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v5, "com.mtk.3G_SWITCH"

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2967
    const-string v5, "3G_SIM_ID"

    const/16 v6, 0x63

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 2968
    if-ne v4, v2, :cond_3

    .line 2970
    const-string v0, "get3GCapabilitySIM (DT) PREF_3G_SIM_ID: -1"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logw(Ljava/lang/String;)V

    move v0, v2

    .line 2971
    goto :goto_0

    .line 2974
    :cond_3
    if-gt v1, v7, :cond_0

    .line 2976
    if-le v3, v7, :cond_4

    .line 2977
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 2978
    goto :goto_0

    .line 2981
    :cond_5
    add-int/lit8 v0, v0, 0x1

    :cond_6
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_8

    .line 2982
    const-string v1, "gsm.baseband.capability"

    .line 2984
    if-lez v0, :cond_7

    .line 2985
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2988
    :cond_7
    invoke-static {v1, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2990
    if-le v1, v7, :cond_5

    .line 2991
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->get3GCapabilitySIM()I

    move-result v0

    goto :goto_0

    .line 2994
    :cond_8
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeminiPhone getCapabilitySIM return -1 ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteSupport()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 2995
    goto/16 :goto_0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 2398
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndexGemini(I)I
    .locals 1

    .prologue
    .line 1660
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 2406
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconModeGemini(I)I
    .locals 1

    .prologue
    .line 1668
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2402
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaEriTextGemini(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1664
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2365
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 2366
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getConcatenatedBearersPropertiesOfDefaultBearer(Ljava/lang/String;)[Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .locals 2

    .prologue
    .line 3912
    const/4 v0, 0x0

    .line 3913
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3914
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 3916
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getConcatenatedBearersPropertiesOfDefaultBearer(Ljava/lang/String;)[Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getContextGemini(I)Landroid/content/Context;
    .locals 1

    .prologue
    .line 1395
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCallMeter(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2530
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCurrentCallMeter(Landroid/os/Message;)V

    .line 2531
    return-void
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2225
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getCurrentDataConnectionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDataConnectionListGemini(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getCurrentDataConnectionListGemini(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataCallList(Landroid/os/Message;)V

    .line 2222
    return-void
.end method

.method public getDataCallListGemini(Landroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataCallListGemini(Landroid/os/Message;I)V

    .line 1521
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionStateGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionStateGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabledGemini(I)Z
    .locals 1

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataRoamingEnabledGemini(I)Z

    move-result v0

    return v0
.end method

.method public getDeactivateCidArray(Ljava/lang/String;)[I
    .locals 2

    .prologue
    .line 3928
    const/4 v0, 0x0

    .line 3929
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3930
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 3932
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getDeactivateCidArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getDefaultBearerProperties(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .locals 2

    .prologue
    .line 3904
    const/4 v0, 0x0

    .line 3905
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3906
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 3908
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getDefaultBearerProperties(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2313
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServersGemini(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDnsServersGemini(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDualSimMode()I
    .locals 1

    .prologue
    .line 1227
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    return v0
.end method

.method public getEfRatBalancing()I
    .locals 1

    .prologue
    .line 3542
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEfRatBalancing()I

    move-result v0

    return v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 1974
    return-void
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEsnGemini(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1631
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFDTimerValue()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 3687
    const/4 v0, 0x0

    .line 3688
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3689
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 3691
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getFDTimerValue()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2502
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2503
    return-void
.end method

.method public getFemtoCellList(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2

    .prologue
    .line 3700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Geminiphone getFemtoCellList(),operatorNumeric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",rat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3701
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getFemtoCellList(Ljava/lang/String;ILandroid/os/Message;I)V

    .line 3702
    return-void
.end method

.method public getFemtoCellList(Ljava/lang/String;ILandroid/os/Message;I)V
    .locals 2

    .prologue
    .line 3715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Geminiphone getFemtoCellList(),operatorNumeric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",rat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",from SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p4, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3716
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneProxy;->getFemtoCellList(Ljava/lang/String;ILandroid/os/Message;)V

    .line 3717
    return-void
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1989
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getGeminiDataSubUtil()Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;
    .locals 1

    .prologue
    .line 3580
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 2349
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManagerGemini(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 1639
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 1941
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2333
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSerialNumberGemini(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1627
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;
    .locals 1

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getIccServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;

    move-result-object v0

    return-object v0
.end method

.method public getIccServiceStatusGemini(Lcom/android/internal/telephony/Phone$IccService;I)Lcom/android/internal/telephony/Phone$IccServiceStatus;
    .locals 1

    .prologue
    .line 1708
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getIccServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3554
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsExtInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3852
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImsRegInfo()Z
    .locals 1

    .prologue
    .line 3851
    const/4 v0, 0x0

    return v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    .prologue
    .line 3530
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v0

    return-object v0
.end method

.method public getLastCallFailCause()I
    .locals 1

    .prologue
    .line 2558
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLastCallFailCause()I

    move-result v0

    return v0
.end method

.method public getLastDataConnectionFailCause(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 2

    .prologue
    .line 3944
    const/4 v0, 0x0

    .line 3945
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3946
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 3948
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getLastDataConnectionFailCause(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 1

    .prologue
    .line 3562
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1

    .prologue
    .line 3566
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getLocatedPlmn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1356
    .line 1357
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_1

    .line 1359
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getLocatedPlmn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1360
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getLocatedPlmn()Ljava/lang/String;

    move-result-object v0

    .line 1364
    :goto_1
    return-object v0

    .line 1357
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1364
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getLocatedPlmnGemini(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1374
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getLocatedPlmn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 3546
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2341
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMobileRevisionAndImei(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2390
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getMobileRevisionAndImei(ILandroid/os/Message;)V

    .line 2391
    return-void
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3558
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    return v0
.end method

.method public getMvnoMatchType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3641
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getMvnoMatchType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMvnoMatchType(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3645
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getMvnoMatchType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMvnoPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3649
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getMvnoPattern(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMvnoPattern(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3653
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getMvnoPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMySimId()I
    .locals 1

    .prologue
    .line 2578
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2190
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 2191
    return-void
.end method

.method public getNetworkHideState()I
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getNetworkHideState()I

    move-result v0

    return v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2106
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 2107
    return-void
.end method

.method public getPcoPcscf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    .locals 2

    .prologue
    .line 3896
    const/4 v0, 0x0

    .line 3897
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3898
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 3900
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getPcoPcscf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPdpContextList(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2217
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getPdpContextList(Landroid/os/Message;)V

    .line 2218
    return-void
.end method

.method public getPdpContextListGemini(Landroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getPdpContextListGemini(Landroid/os/Message;I)V

    .line 1516
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 2345
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneSubInfoGemini(I)Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 1635
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPhoneTypeGemini(I)I
    .locals 1

    .prologue
    .line 1409
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPhonebyId(I)Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPolCapability(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 3494
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPolCapability(Landroid/os/Message;)V

    .line 3495
    return-void
.end method

.method public getPpuAndCurrency(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPpuAndCurrency(Landroid/os/Message;)V

    .line 2543
    return-void
.end method

.method public getPreferedOperatorList(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 3498
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferedOperatorList(Landroid/os/Message;)V

    .line 3499
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 2180
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2181
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 2182
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 2187
    :goto_0
    return-void

    .line 2185
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1997
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getSN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2322
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSimIndicatorState()I
    .locals 1

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimIndicatorState()I

    move-result v0

    return v0
.end method

.method public getSimInsertedState()I
    .locals 2

    .prologue
    .line 1231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimInsertedState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 1232
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    return v0
.end method

.method public getSimSwitchAllowedSlots()I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2861
    .line 2863
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->q()I

    move-result v2

    if-lez v2, :cond_6

    .line 2865
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    if-eqz v2, :cond_5

    .line 2868
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v2, v3, :cond_13

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v2, v0

    :goto_0
    move-object v2, v0

    .line 2869
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v4, :cond_12

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v0, v3

    :goto_2
    move-object v3, v0

    .line 2870
    :goto_3
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v6, :cond_11

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v0, v4

    :goto_4
    move-object v4, v0

    .line 2871
    :goto_5
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v5, 0x4

    if-lt v0, v5, :cond_10

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v1, v0, v6

    :cond_0
    move-object v5, v1

    .line 2873
    :goto_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/telephony/ISimSwitchPolicy;->getAllowedSwitchSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2903
    :cond_1
    :goto_7
    return v0

    :cond_2
    move-object v0, v1

    .line 2868
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 2869
    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 2870
    goto :goto_4

    .line 2878
    :cond_5
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSimSwitchAllowedSlots] no SIM switch policy instance, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". (mSimSwitchPolicy null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2882
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->s()I

    move-result v2

    if-lez v2, :cond_1

    .line 2884
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    if-eqz v2, :cond_b

    .line 2887
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v2, v3, :cond_f

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v2, v0

    :goto_8
    move-object v2, v0

    .line 2888
    :goto_9
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v4, :cond_e

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v0, v3

    :goto_a
    move-object v3, v0

    .line 2889
    :goto_b
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v6, :cond_d

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v0, v4

    :goto_c
    move-object v4, v0

    .line 2890
    :goto_d
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v5, 0x4

    if-lt v0, v5, :cond_c

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v1, v0, v6

    :cond_7
    move-object v5, v1

    .line 2892
    :goto_e
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/telephony/ISwitch3GPolicy;->getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_7

    :cond_8
    move-object v0, v1

    .line 2887
    goto :goto_8

    :cond_9
    move-object v0, v1

    .line 2888
    goto :goto_a

    :cond_a
    move-object v0, v1

    .line 2889
    goto :goto_c

    .line 2897
    :cond_b
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSimSwitchAllowedSlots] no 3g switch policy instance, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". (mSwitch3GPolicy null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_c
    move-object v5, v1

    goto :goto_e

    :cond_d
    move-object v4, v1

    goto :goto_d

    :cond_e
    move-object v3, v1

    goto :goto_b

    :cond_f
    move-object v2, v1

    goto :goto_9

    :cond_10
    move-object v5, v1

    goto/16 :goto_6

    :cond_11
    move-object v4, v1

    goto/16 :goto_5

    :cond_12
    move-object v3, v1

    goto/16 :goto_3

    :cond_13
    move-object v2, v1

    goto/16 :goto_1
.end method

.method public getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1

    .prologue
    .line 2277
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    return-object v0
.end method

.method public getSimulatedRadioControlGemini(I)Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1

    .prologue
    .line 1570
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    return-object v0
.end method

.method public getSmsDefaultSim()I
    .locals 4

    .prologue
    .line 2709
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ay:Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;->getSmsDefaultSim(Landroid/content/Context;)I

    move-result v0

    .line 2710
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmsDefaultSim result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    return v0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2386
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 2387
    return-void
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 1761
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUeEUtranVoiceDomainPreference()I
    .locals 1

    .prologue
    .line 3828
    const/4 v0, 0x0

    return v0
.end method

.method public getUeMobilityManagementImsVoiceTermination()I
    .locals 1

    .prologue
    .line 3842
    const/4 v0, 0x0

    return v0
.end method

.method public getUeUtranVoiceDomainPreference()I
    .locals 1

    .prologue
    .line 3835
    const/4 v0, 0x0

    return v0
.end method

.method public getUnitTestMode()Z
    .locals 1

    .prologue
    .line 2245
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    return v0
.end method

.method public getUnitTestModeGemini(I)Z
    .locals 1

    .prologue
    .line 1533
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    return v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 1

    .prologue
    .line 3514
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3515
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v0

    .line 3517
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2084
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public getVtCallForwardingOption(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2641
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getVtCallForwardingOption(ILandroid/os/Message;)V

    .line 2643
    return-void
.end method

.method public getVtCallWaiting(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2653
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getVtCallWaiting(Landroid/os/Message;)V

    .line 2654
    return-void
.end method

.method public getVtFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2661
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getVtFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2662
    return-void
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 595
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 597
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 714
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 599
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    .line 601
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 602
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    goto :goto_0

    .line 606
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    .line 607
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    goto :goto_0

    .line 612
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_2

    .line 613
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aP:Z

    if-eqz v0, :cond_1

    .line 614
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeMessages(I)V

    .line 615
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aP:Z

    goto :goto_0

    .line 618
    :cond_1
    const-string v0, "receive EVENT_RADIO_AVAILABLE to start framework initialization"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 623
    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aI:Z

    .line 624
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aG:Z

    if-eqz v0, :cond_3

    .line 625
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aH:Z

    .line 628
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Z

    if-eqz v0, :cond_0

    .line 629
    const-string v0, "broadcast 3G switch done event"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 630
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->t()V

    goto :goto_0

    .line 621
    :cond_2
    const-string v0, "receive EVENT_SIM_INSERTED_STATUS to start framework initialization"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 627
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j()V

    goto :goto_2

    .line 634
    :sswitch_3
    const-string v0, "receive EVENT_CONFIG_SIM_SWITCH_DONE to continue framework initialization"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 636
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    .line 637
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    .line 639
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aI:Z

    .line 640
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aG:Z

    if-eqz v0, :cond_4

    .line 641
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aH:Z

    .line 644
    :goto_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Z

    if-eqz v0, :cond_0

    .line 645
    const-string v0, "broadcast 3G switch done event (DT)"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 646
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->t()V

    goto/16 :goto_0

    .line 643
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j()V

    goto :goto_3

    .line 651
    :sswitch_4
    const-string v0, "Receive EVENT_GET_NETWORK_SELECTION_MODE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 652
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 653
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 655
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    .line 656
    aget v0, v0, v1

    if-ne v0, v3, :cond_0

    .line 657
    const-string v0, "Start manual selection mode reminder service in GeminiPhone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 658
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 659
    const-string v1, "com.android.phone"

    const-string v2, "com.mediatek.settings.NoNetworkPopUpService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 665
    :sswitch_5
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aC:Z

    if-nez v0, :cond_5

    .line 666
    const-string v0, "Not boot up but want to do dual sim switch done, skip"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 670
    :cond_5
    const-string v0, "To re-register SIM inserted status notification."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 671
    :goto_4
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_6

    .line 672
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 674
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 677
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 678
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_7

    .line 679
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->t()V

    .line 680
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Z

    .line 681
    const-string v0, "3G switch done (set preferred network mode)"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 683
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set preferred network mode failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v0

    .line 685
    if-ltz v0, :cond_8

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set preferred network mode failed ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), to use +ES3G and reset modem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 687
    const/16 v1, 0x63

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->set3GSim(I)V

    .line 688
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g(I)Z

    goto/16 :goto_0

    .line 690
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/RIL;->get3GSimId()I

    move-result v2

    .line 691
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->set3GSim(I)V

    .line 692
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v4, "com.mtk.3G_SWITCH"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 693
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 694
    const-string v4, "3G_SIM_ID"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 695
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 696
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->t()V

    .line 697
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Z

    .line 698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set preferred network mode failed ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), restore back ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 703
    :sswitch_7
    const-string v0, "Query ICCID for SIM Hot Swap done"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 704
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()V

    goto/16 :goto_0

    .line 707
    :sswitch_8
    const-string v0, "GPRS detached then query available NW."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 708
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 709
    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 710
    iget v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 711
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->unregisterForDetached(ILandroid/os/Handler;)V

    goto/16 :goto_0

    .line 597
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_2
        0x3 -> :sswitch_6
        0x4 -> :sswitch_4
        0x5 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_2
        0x9 -> :sswitch_3
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
    .end sparse-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hangupActiveCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2526
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    .line 2527
    return-void
.end method

.method public hangupAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2518
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupAll()V

    .line 2519
    return-void
.end method

.method public hangupAllEx()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupAllEx()V

    .line 2523
    return-void
.end method

.method public internationalModeForceSimSwitch(I)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 3745
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internationalModeForceSimSwitch simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 3746
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3753
    :cond_0
    :goto_0
    return v0

    .line 3750
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 3753
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aQ:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->switchPhone(IZ)I

    move-result v0

    goto :goto_0
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2206
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 2207
    return-void
.end method

.method public invokeOemRilRequestRawGemini([BLandroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1503
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1504
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2210
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 2211
    return-void
.end method

.method public invokeOemRilRequestStringsGemini([Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1507
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1508
    return-void
.end method

.method public is3GSwitchManualChange3GAllowed()Z
    .locals 1

    .prologue
    .line 2806
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimSwitchManualChangeSlotAllowed()Z

    move-result v0

    return v0
.end method

.method public is3GSwitchManualEnabled()Z
    .locals 1

    .prologue
    .line 2756
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimSwitchManualModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 3535
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityEnabled()Z
    .locals 1

    .prologue
    .line 2299
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityEnabled()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityEnabledGemini(I)Z
    .locals 1

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityEnabledGemini(I)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 2303
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2309
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossibleGemini(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityPossibleGemini(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isDedicateBearer(I)Z
    .locals 2

    .prologue
    .line 3952
    const/4 v0, 0x0

    .line 3953
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3954
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 3956
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->isDedicateBearer(I)Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDnsCheckDisabled()Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabledGemini(I)Z
    .locals 1

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDnsCheckDisabledGemini(I)Z

    move-result v0

    return v0
.end method

.method public isEmergencyCid(I)Z
    .locals 2

    .prologue
    .line 3936
    const/4 v0, 0x0

    .line 3937
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3938
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 3940
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->isEmergencyCid(I)Z

    move-result v0

    return v0
.end method

.method public isGprsDetachingOrDetached(I)Z
    .locals 1

    .prologue
    .line 3659
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isGprsDetachingOrDetached(I)Z

    move-result v0

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isMinInfoReady()Z

    move-result v0

    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2418
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOtaSpNumberGemini(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 1672
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRadioOnGemini(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1193
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 1207
    :cond_0
    :goto_0
    return v0

    .line 1197
    :cond_1
    if-nez p1, :cond_2

    .line 1198
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1199
    :cond_2
    if-ne p1, v0, :cond_3

    .line 1200
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1201
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 1202
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1203
    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 1204
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1206
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRadioOnGemini() got invalid simId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->loge(Ljava/lang/String;)V

    move v0, v1

    .line 1207
    goto :goto_0
.end method

.method public isSimSwitchManualChangeSlotAllowed()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2809
    .line 2811
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->q()I

    move-result v2

    if-lez v2, :cond_5

    .line 2813
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    if-eqz v2, :cond_4

    .line 2816
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v2, v3, :cond_13

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v2, v0

    :goto_0
    move-object v2, v0

    .line 2817
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v4, :cond_12

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v0, v3

    :goto_2
    move-object v3, v0

    .line 2818
    :goto_3
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v6, :cond_11

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v0, v4

    :goto_4
    move-object v4, v0

    .line 2819
    :goto_5
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v5, 0x4

    if-lt v0, v5, :cond_10

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v1, v0, v6

    :cond_0
    move-object v5, v1

    .line 2821
    :goto_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/telephony/ISimSwitchPolicy;->isManualModeChangeSlotAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2851
    :goto_7
    return v0

    :cond_1
    move-object v0, v1

    .line 2816
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 2817
    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 2818
    goto :goto_4

    .line 2826
    :cond_4
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSimSwitchManualChangeSlotAllowed] no SIM switch policy instance, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". (mSimSwitchPolicy null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2830
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->s()I

    move-result v2

    if-lez v2, :cond_b

    .line 2832
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    if-eqz v2, :cond_a

    .line 2835
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v2, v3, :cond_f

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v2, v0

    :goto_8
    move-object v2, v0

    .line 2836
    :goto_9
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v4, :cond_e

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v0, v3

    :goto_a
    move-object v3, v0

    .line 2837
    :goto_b
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v6, :cond_d

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v0, v4

    :goto_c
    move-object v4, v0

    .line 2838
    :goto_d
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v5, 0x4

    if-lt v0, v5, :cond_c

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v1, v0, v6

    :cond_6
    move-object v5, v1

    .line 2840
    :goto_e
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/telephony/ISwitch3GPolicy;->isManualModeChange3GAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_7

    :cond_7
    move-object v0, v1

    .line 2835
    goto :goto_8

    :cond_8
    move-object v0, v1

    .line 2836
    goto :goto_a

    :cond_9
    move-object v0, v1

    .line 2837
    goto :goto_c

    .line 2845
    :cond_a
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSimSwitchManualChangeSlotAllowed] no 3g switch policy instance, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". (mSwitch3GPolicy null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_b
    move v0, v3

    .line 2849
    goto/16 :goto_7

    :cond_c
    move-object v5, v1

    goto :goto_e

    :cond_d
    move-object v4, v1

    goto :goto_d

    :cond_e
    move-object v3, v1

    goto :goto_b

    :cond_f
    move-object v2, v1

    goto :goto_9

    :cond_10
    move-object v5, v1

    goto/16 :goto_6

    :cond_11
    move-object v4, v1

    goto/16 :goto_5

    :cond_12
    move-object v3, v1

    goto/16 :goto_3

    :cond_13
    move-object v2, v1

    goto/16 :goto_1
.end method

.method public isSimSwitchManualModeEnabled()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2759
    .line 2761
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->q()I

    move-result v2

    if-lez v2, :cond_5

    .line 2763
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    if-eqz v2, :cond_4

    .line 2766
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v2, v3, :cond_13

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v2, v0

    :goto_0
    move-object v2, v0

    .line 2767
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v4, :cond_12

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v0, v3

    :goto_2
    move-object v3, v0

    .line 2768
    :goto_3
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v6, :cond_11

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v0, v4

    :goto_4
    move-object v4, v0

    .line 2769
    :goto_5
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v5, 0x4

    if-lt v0, v5, :cond_10

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v1, v0, v6

    :cond_0
    move-object v5, v1

    .line 2771
    :goto_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ax:Lcom/mediatek/common/telephony/ISimSwitchPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/telephony/ISimSwitchPolicy;->isManualModeEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2799
    :goto_7
    return v0

    :cond_1
    move-object v0, v1

    .line 2766
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 2767
    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 2768
    goto :goto_4

    .line 2776
    :cond_4
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSimSwitchManualModeEnabled] no SIM switch policy instance, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". (mSimSwitchPolicy null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2779
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->s()I

    move-result v2

    if-lez v2, :cond_b

    .line 2781
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    if-eqz v2, :cond_a

    .line 2784
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v2, v3, :cond_f

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v2, v0

    :goto_8
    move-object v2, v0

    .line 2785
    :goto_9
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v4, :cond_e

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v0, v3

    :goto_a
    move-object v3, v0

    .line 2786
    :goto_b
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v6, :cond_d

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v0, v0, v4

    :goto_c
    move-object v4, v0

    .line 2787
    :goto_d
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v5, 0x4

    if-lt v0, v5, :cond_c

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->L:[Ljava/lang/String;

    aget-object v1, v0, v6

    :cond_6
    move-object v5, v1

    .line 2789
    :goto_e
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aw:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/telephony/ISwitch3GPolicy;->isManualModeEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_7

    :cond_7
    move-object v0, v1

    .line 2784
    goto :goto_8

    :cond_8
    move-object v0, v1

    .line 2785
    goto :goto_a

    :cond_9
    move-object v0, v1

    .line 2786
    goto :goto_c

    .line 2794
    :cond_a
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSimSwitchManualModeEnabled] no 3g switch policy instance, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". (mSwitch3GPolicy null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_b
    move v0, v3

    .line 2797
    goto/16 :goto_7

    :cond_c
    move-object v5, v1

    goto :goto_e

    :cond_d
    move-object v4, v1

    goto :goto_d

    :cond_e
    move-object v3, v1

    goto :goto_b

    :cond_f
    move-object v2, v1

    goto :goto_9

    :cond_10
    move-object v5, v1

    goto/16 :goto_6

    :cond_11
    move-object v4, v1

    goto/16 :goto_5

    :cond_12
    move-object v3, v1

    goto/16 :goto_3

    :cond_13
    move-object v2, v1

    goto/16 :goto_1
.end method

.method public isSimSwitchSwapped()Z
    .locals 1

    .prologue
    .line 3426
    invoke-static {}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->getInstance()Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->isSimSwitchSwapped()Z

    move-result v0

    return v0
.end method

.method public isSwitching3GCapability()Z
    .locals 1

    .prologue
    .line 2742
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSwitchingCapabilitySim()Z

    move-result v0

    return v0
.end method

.method public isSwitchingCapabilitySim()Z
    .locals 1

    .prologue
    .line 2745
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2746
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Z

    .line 2748
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public modifyDedicateBearer(ILcom/android/internal/telephony/dataconnection/QosStatus;Lcom/android/internal/telephony/dataconnection/TftStatus;)I
    .locals 2

    .prologue
    .line 3872
    const/4 v0, 0x0

    .line 3873
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3874
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 3876
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneProxy;->modifyDedicateBearer(ILcom/android/internal/telephony/dataconnection/QosStatus;Lcom/android/internal/telephony/dataconnection/TftStatus;)I

    move-result v0

    return v0
.end method

.method n()I
    .locals 3

    .prologue
    .line 1055
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v1

    .line 1056
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1057
    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_1

    .line 1058
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1064
    :goto_1
    return v0

    .line 1057
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 3550
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public notifyDataActivity()V
    .locals 1

    .prologue
    .line 2382
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->notifyDataActivity()V

    .line 2383
    return-void
.end method

.method public notifyDataActivityGemini(I)V
    .locals 1

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->notifyDataActivityGemini(I)V

    .line 1657
    return-void
.end method

.method public notifySimMissingStatus(Z)V
    .locals 0

    .prologue
    .line 3590
    return-void
.end method

.method public onSimHotSwap(IZ)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimHotSwap ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3597
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 3598
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aJ:Z

    .line 3601
    :cond_0
    if-eqz p2, :cond_2

    .line 3602
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    .line 3603
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 3604
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aL:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aL:I

    .line 3606
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryIccId(Landroid/os/Message;)V

    .line 3615
    :goto_0
    return-void

    .line 3610
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v0

    if-ne v0, v2, :cond_3

    .line 3611
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aL:I

    shl-int v1, v2, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aL:I

    .line 3613
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()V

    goto :goto_0
.end method

.method public pcscfDiscovery(Ljava/lang/String;ILandroid/os/Message;)I
    .locals 2

    .prologue
    .line 3888
    const/4 v0, 0x0

    .line 3889
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3890
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 3892
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneProxy;->pcscfDiscovery(Ljava/lang/String;ILandroid/os/Message;)I

    move-result v0

    return v0
.end method

.method public plugInNoSimSlot(I)V
    .locals 3

    .prologue
    .line 3622
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aK:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aK:I

    .line 3623
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aL:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aL:I

    .line 3624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plugInNoSimSlot: SIM Count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aK:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDualSimHotPlugStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 3626
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aK:I

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v1, :cond_0

    .line 3627
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aJ:Z

    .line 3628
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aS:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3629
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()V

    .line 3636
    :goto_0
    return-void

    .line 3631
    :cond_0
    const-string v0, "plugInNoSimSlot: Wait for other SIM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 3633
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aS:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3634
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aS:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2253
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 2254
    return-void
.end method

.method public queryAvailableBandModeGemini(Landroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1541
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 1542
    return-void
.end method

.method public queryCDMANetworkInfo(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 3741
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 2266
    return-void
.end method

.method public queryCdmaRoamingPreferenceGemini(Landroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1558
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 1559
    return-void
.end method

.method public queryCellBroadcastSmsActivation(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2378
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCellBroadcastSmsActivation(Landroid/os/Message;)V

    .line 2379
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2357
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 2358
    return-void
.end method

.method public queryTTYModeGemini(Landroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1651
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 1652
    return-void
.end method

.method public refreshSpnDisplay()V
    .locals 2

    .prologue
    .line 1332
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 1333
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->refreshSpnDisplay()V

    .line 1332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1335
    :cond_0
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2470
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2471
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2422
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2423
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1910
    return-void
.end method

.method public registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2632
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2633
    return-void
.end method

.method public registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1878
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1829
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->d(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1830
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2438
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2439
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1926
    return-void
.end method

.method public registerForImsDisableDone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 3849
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1902
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1894
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1821
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->a(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1822
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2462
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2463
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1846
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1838
    return-void
.end method

.method public registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2562
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2563
    return-void
.end method

.method public registerForNeighboringInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1

    .prologue
    .line 1700
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1701
    return-void
.end method

.method public registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2570
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2571
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1813
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->c(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1814
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2446
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2447
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1806
    return-void
.end method

.method public registerForRadioOffOrNotAvailableNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2486
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRadioOffOrNotAvailableNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2487
    return-void
.end method

.method public registerForRadioOffOrNotAvailableNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1

    .prologue
    .line 1684
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRadioOffOrNotAvailableNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1685
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2454
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2455
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2670
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2671
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1934
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1862
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2430
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2431
    return-void
.end method

.method public registerForSignalInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1

    .prologue
    .line 1676
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1677
    return-void
.end method

.method public registerForSimModeChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 1157
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1158
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1159
    return-void
.end method

.method public registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 2582
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->e(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2583
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1918
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1886
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1870
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2478
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2479
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1797
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->b(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1798
    return-void
.end method

.method public registerForVoLteConferenceCallNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2624
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVoLteConferenceCallNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2625
    return-void
.end method

.method public registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2616
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2617
    return-void
.end method

.method public registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2607
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2608
    return-void
.end method

.method public registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2599
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2600
    return-void
.end method

.method public registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2591
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2592
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    .line 1954
    return-void
.end method

.method public removeReferences()V
    .locals 2

    .prologue
    .line 498
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->removeReferences()V

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :cond_0
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 3526
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 3527
    return-void
.end method

.method public requestSwitchHPF(ZLandroid/os/Message;)V
    .locals 0

    .prologue
    .line 3732
    return-void
.end method

.method public resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2550
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V

    .line 2551
    return-void
.end method

.method public selectFemtoCell(Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 3710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Geminiphone selectFemtoCell(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3711
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->selectFemtoCell(Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;Landroid/os/Message;I)V

    .line 3712
    return-void
.end method

.method public selectFemtoCell(Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;Landroid/os/Message;I)V
    .locals 2

    .prologue
    .line 3725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectFemtoCell(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 3726
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->selectFemtoCell(Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;Landroid/os/Message;)V

    .line 3727
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2137
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 2138
    return-void
.end method

.method public sendBtSimProfile(IILjava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2682
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBtSimProfile(IILjava/lang/String;Landroid/os/Message;)V

    .line 2683
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2410
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 2411
    return-void
.end method

.method public sendDtmf(C)V
    .locals 1

    .prologue
    .line 2031
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    .line 2032
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    .line 1858
    return-void
.end method

.method public set3GCapabilitySIM(I)Z
    .locals 1

    .prologue
    .line 3063
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setCapabilitySIM(II)Z

    move-result v0

    return v0
.end method

.method public setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2546
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2547
    return-void
.end method

.method public setAvoidSYS(ZLandroid/os/Message;)V
    .locals 0

    .prologue
    .line 3735
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2249
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    .line 2250
    return-void
.end method

.method public setBandModeGemini(ILandroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1537
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    .line 1538
    return-void
.end method

.method public setBtConnectedSimId(I)V
    .locals 0

    .prologue
    .line 552
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aq:I

    .line 553
    return-void
.end method

.method public setCRO(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 3584
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setCRO(ILandroid/os/Message;)V

    .line 3585
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setCRO(ILandroid/os/Message;)V

    .line 3586
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6

    .prologue
    .line 2101
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 2103
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2120
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 2121
    return-void
.end method

.method public setCapabilitySIM(II)Z
    .locals 9

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x3

    const/4 v5, 0x0

    .line 3066
    .line 3068
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteSupport()Z

    move-result v0

    if-nez v0, :cond_0

    if-eq p1, v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p1, v8, :cond_2

    .line 3069
    :cond_1
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeminiPhone setCapabilitySIM param error, return false ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteSupport()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    :goto_0
    return v5

    .line 3074
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3076
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "persist.gemini.sim_num"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v1, :cond_4

    .line 3077
    :cond_3
    const-string v0, "Switch 3G capability (DT) does not support EVDO DT or Gemini+"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logw(Ljava/lang/String;)V

    goto :goto_0

    .line 3081
    :cond_4
    const-string v0, "gsm.baseband.capability"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3082
    const-string v1, "gsm.baseband.capability2"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3083
    if-le v0, v3, :cond_5

    if-gt v1, v3, :cond_6

    :cond_5
    if-ne v0, v3, :cond_7

    if-ne v1, v3, :cond_7

    .line 3084
    :cond_6
    const-string v0, "Switch 3G capability (DT) does not support in 2G phone or Dual 3G phone."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logw(Ljava/lang/String;)V

    goto :goto_0

    .line 3088
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Switch 3G capability (DT) (simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", capability="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", capability2="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logw(Ljava/lang/String;)V

    .line 3092
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Z

    if-eqz v0, :cond_9

    .line 3093
    const-string v0, "PHONE"

    const-string v1, "Switch 3G capability now, not to do it repeatedly"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    move v1, v5

    .line 3096
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_11

    .line 3097
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isGSMRadioAvailable()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v5

    .line 3103
    :goto_2
    if-eqz v0, :cond_10

    .line 3104
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeminiPhone set3GCapabilitySIM ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v1, "com.mtk.3G_SWITCH"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3106
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3107
    const-string v1, "3G_SIM_ID"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3108
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3109
    iput-boolean v8, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Z

    .line 3111
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aF:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_a

    .line 3112
    const-string v0, "PHONE"

    const-string v1, "Create 3G Switch wakelock"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 3114
    const-string v1, "3G_SWITCH"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aF:Landroid/os/PowerManager$WakeLock;

    .line 3115
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aF:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 3117
    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aF:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 3118
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aF:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3119
    const-string v0, "PHONE"

    const-string v3, "Acquire 3G Switch wakelock"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aF:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3122
    :cond_b
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3124
    new-instance v1, Landroid/content/Intent;

    sget-object v0, Lcom/android/internal/telephony/TelephonyIntents;->EVENT_PRE_CAPABILITY_SWITCH:Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3126
    if-ltz p2, :cond_c

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt p2, v0, :cond_d

    :cond_c
    const/4 v0, -0x1

    if-ne v0, p2, :cond_e

    .line 3128
    :cond_d
    sget-object v0, Lcom/android/internal/telephony/TelephonyIntents;->EXTRA_CAPABILITY:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3129
    sget-object v0, Lcom/android/internal/telephony/TelephonyIntents;->EXTRA_CAPABILITY_SIM:Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3132
    :cond_e
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3134
    const-string v0, "PHONE"

    const-string v3, "GeminiPhone is sending ordered pre 3G switch event"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3135
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aT:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->a(II)V

    .line 3136
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aT:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    move v5, v8

    .line 3138
    goto/16 :goto_0

    .line 3096
    :cond_f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 3122
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3139
    :cond_10
    const-string v0, "PHONE"

    const-string v1, "Radio unavailable and cannot do 3G Switch"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    move v0, v8

    goto/16 :goto_2
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 2270
    return-void
.end method

.method public setCdmaRoamingPreferenceGemini(ILandroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1562
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 1563
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2273
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    .line 2274
    return-void
.end method

.method public setCdmaSubscriptionGemini(ILandroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1566
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    .line 1567
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2369
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    .line 2370
    return-void
.end method

.method public setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2374
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V

    .line 2375
    return-void
.end method

.method public setCellInfoListRate(I)V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    .line 511
    return-void
.end method

.method public setCellInfoListRateGemini(II)V
    .locals 1

    .prologue
    .line 1549
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    .line 1550
    return-void
.end method

.method public setCurrentPreferredNetworkType()V
    .locals 0

    .prologue
    .line 3577
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1

    .prologue
    .line 2261
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setDataRoamingEnabled(Z)V

    .line 2262
    return-void
.end method

.method public setDefaultBearerConfig(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;)I
    .locals 2

    .prologue
    .line 3920
    const/4 v0, 0x0

    .line 3921
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3922
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 3924
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setDefaultBearerConfig(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;)I

    move-result v0

    return v0
.end method

.method public setDefaultPhone(I)V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    .line 531
    return-void
.end method

.method public setDefaultPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    .line 521
    return-void
.end method

.method public setDualSimMode(I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDualSimMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 1213
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ap:I

    .line 1215
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1216
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1217
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1218
    const-string v1, "Is in flight mode, to re-register inserted status after dual SIM mode changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 1219
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 1220
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(I)V

    .line 1219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1224
    :cond_0
    return-void
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 1

    .prologue
    .line 2678
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled(Z)V

    .line 2679
    return-void
.end method

.method public setFDTimerValue([Ljava/lang/String;Landroid/os/Message;)I
    .locals 2

    .prologue
    .line 3672
    const/4 v0, 0x0

    .line 3673
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3674
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 3676
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setFDTimerValue([Ljava/lang/String;Landroid/os/Message;)I

    move-result v0

    return v0
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2506
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 2507
    return-void
.end method

.method public setGprsTransferType(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setGprsTransferType(ILandroid/os/Message;)V

    .line 1325
    return-void
.end method

.method public setIMSEnabled(Z)V
    .locals 0

    .prologue
    .line 3848
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2071
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2072
    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    .line 2199
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2133
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 2134
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2494
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2495
    return-void
.end method

.method public setOnEcbModeExitResponseGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1

    .prologue
    .line 1692
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1693
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2195
    return-void
.end method

.method public setOnPostDialCharacterGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1

    .prologue
    .line 1499
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1500
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2111
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 2113
    return-void
.end method

.method public setPolEntry(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 3502
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPolEntry(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V

    .line 3503
    return-void
.end method

.method public setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2554
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2555
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 7

    .prologue
    const/16 v6, 0xff

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 2141
    const-string v0, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeminiPhone:setPreferredNetworkType networkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " default phone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v2

    .line 2144
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v3, "RATMode"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aD:Landroid/content/SharedPreferences;

    .line 2145
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aD:Landroid/content/SharedPreferences;

    const-string v3, "ModeType"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:I

    .line 2146
    const-string v0, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPreferredNetworkType() mEmNetworkMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    if-nez v0, :cond_2

    .line 2148
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preferred_network_mode"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2153
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:I

    if-eq v0, v6, :cond_0

    .line 2154
    iget p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:I

    .line 2155
    const-string v0, "PHONE"

    const-string v3, "Notice, the network mode is set from Engineering Mode, using EM settings "

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2158
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2159
    const-string v0, "PHONE"

    const-string v2, "[DT]setPreferredNetworkType, phone = 0"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 2177
    :cond_1
    :goto_1
    return-void

    .line 2150
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preferred_network_mode_2"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 2162
    :cond_3
    const-string v0, "PHONE"

    const-string v1, "[DT]setPreferredNetworkType, phone = 1"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_1

    .line 2166
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:I

    if-ne v0, v5, :cond_6

    move v0, v1

    .line 2167
    :goto_2
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 2168
    if-ne v0, v2, :cond_5

    .line 2169
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 2167
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2171
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v5, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_3

    .line 2174
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_1
.end method

.method public setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1469
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v2

    .line 1470
    const-string v0, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeminiPhone:setPreferredNetworkTypeGemini networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v3, "RATMode"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aD:Landroid/content/SharedPreferences;

    .line 1472
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aD:Landroid/content/SharedPreferences;

    const-string v3, "ModeType"

    const/16 v4, 0xff

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:I

    .line 1473
    const-string v0, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEmNetworkMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1476
    if-nez p3, :cond_1

    .line 1477
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "preferred_network_mode"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1478
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1496
    :cond_0
    :goto_0
    return-void

    .line 1480
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode_2"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1481
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v5

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 1484
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preferred_network_mode"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1485
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aE:I

    if-ne v0, v5, :cond_4

    move v0, v1

    .line 1486
    :goto_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 1487
    if-ne v0, v2, :cond_3

    .line 1488
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1486
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1490
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v5, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_2

    .line 1493
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setPreferredNetworkTypeRIL(I)V
    .locals 0

    .prologue
    .line 3574
    return-void
.end method

.method public setRadioMode(I)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1249
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->isRadioStatusInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->setRadioSIMMode(Landroid/content/Context;I)V

    .line 1252
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aB:Z

    if-eqz v0, :cond_2

    .line 1254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3G switch now, setRadioMode later ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logw(Ljava/lang/String;)V

    .line 1255
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aA:I

    .line 1276
    :cond_1
    :goto_0
    return-void

    .line 1257
    :cond_2
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->aA:I

    .line 1258
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->an:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->resetAsRadioOff(I)V

    .line 1259
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    invoke-static {p0, p1, v0, v4}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;IIZ)V

    .line 1261
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1262
    if-eqz v0, :cond_5

    .line 1263
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->az:Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/ITelephonyExt;->isAutoSwitchDataToEnabledSim()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1264
    if-eq p1, v3, :cond_3

    if-ne p1, v5, :cond_1

    .line 1265
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Need to auto switch to current enabled SIM ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->logd(Ljava/lang/String;)V

    .line 1266
    if-ne p1, v3, :cond_4

    .line 1267
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto :goto_0

    .line 1268
    :cond_4
    if-ne p1, v5, :cond_1

    .line 1269
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto :goto_0

    .line 1273
    :cond_5
    const-string v0, "Cannot get ConnectivityManager"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRadioPower(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 1279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRadioPower,power= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GEMINI_SIM_NUM="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 1281
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1282
    if-eqz p1, :cond_0

    const/16 v0, 0xf

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    .line 1288
    :goto_0
    return-void

    .line 1283
    :cond_1
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ne v2, v1, :cond_3

    .line 1284
    if-eqz p1, :cond_2

    const/4 v0, 0x7

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    goto :goto_0

    .line 1286
    :cond_3
    if-eqz p1, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    goto :goto_0
.end method

.method public setRadioPower(ZZ)V
    .locals 1

    .prologue
    .line 1291
    if-eqz p2, :cond_0

    .line 1292
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    .line 1296
    :goto_0
    return-void

    .line 1294
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioPower(Z)V

    goto :goto_0
.end method

.method public setRadioPowerOn()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1305
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1306
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    .line 1307
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    .line 1317
    :goto_0
    return-void

    .line 1309
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v0

    .line 1310
    if-eqz v0, :cond_1

    .line 1311
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 1312
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    goto :goto_0

    .line 1315
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    goto :goto_0
.end method

.method public setSimInsertedState(IZ)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSimInsertedState["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->log(Ljava/lang/String;)V

    .line 1237
    if-eqz p2, :cond_0

    .line 1238
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    .line 1242
    :goto_0
    return-void

    .line 1240
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    shl-int v1, v2, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->ao:I

    goto :goto_0
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2394
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 2395
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 2

    .prologue
    .line 2353
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 2354
    return-void
.end method

.method public setTTYModeGemini(ILandroid/os/Message;I)V
    .locals 1

    .prologue
    .line 1647
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 1648
    return-void
.end method

.method public setUeEUtranVoiceDomainPreference(I)V
    .locals 0

    .prologue
    .line 3832
    return-void
.end method

.method public setUeMobilityManagementImsVoiceTermination(I)V
    .locals 0

    .prologue
    .line 3846
    return-void
.end method

.method public setUeUtranVoiceDomainPreference(I)V
    .locals 0

    .prologue
    .line 3839
    return-void
.end method

.method public setUnitTestMode(Z)V
    .locals 1

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    .line 2242
    return-void
.end method

.method public setUnitTestModeGemini(ZI)V
    .locals 1

    .prologue
    .line 1529
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    .line 1530
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2090
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 1

    .prologue
    .line 3522
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setVoiceMessageWaiting(II)V

    .line 3523
    return-void
.end method

.method public setVtCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6

    .prologue
    .line 2648
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setVtCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 2650
    return-void
.end method

.method public setVtCallWaiting(ZLandroid/os/Message;)V
    .locals 1

    .prologue
    .line 2657
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setVtCallWaiting(ZLandroid/os/Message;)V

    .line 2658
    return-void
.end method

.method public setVtFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2665
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setVtFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 2666
    return-void
.end method

.method public startDtmf(C)V
    .locals 1

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    .line 2036
    return-void
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 2040
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1958
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2426
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 2427
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 1914
    return-void
.end method

.method public unregisterForCipherIndication(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2636
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCipherIndication(Landroid/os/Handler;)V

    .line 2637
    return-void
.end method

.method public unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V

    .line 1882
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1833
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->d(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1834
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2442
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 2443
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 1930
    return-void
.end method

.method public unregisterForImsDisableDone(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 3850
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 1906
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 1898
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1825
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->a(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1826
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2466
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 2467
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1849
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 1850
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 1842
    return-void
.end method

.method public unregisterForNeighboringInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2566
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNeighboringInfo(Landroid/os/Handler;)V

    .line 2567
    return-void
.end method

.method public unregisterForNeighboringInfoGemini(Landroid/os/Handler;I)V
    .locals 1

    .prologue
    .line 1704
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNeighboringInfo(Landroid/os/Handler;)V

    .line 1705
    return-void
.end method

.method public unregisterForNetworkInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2574
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNetworkInfo(Landroid/os/Handler;)V

    .line 2575
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1817
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->c(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1818
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2450
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNumberInfo(Landroid/os/Handler;)V

    .line 2451
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1810
    return-void
.end method

.method public unregisterForRadioOffOrNotAvailableNotification(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2490
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRadioOffOrNotAvailableNotification(Landroid/os/Handler;)V

    .line 2491
    return-void
.end method

.method public unregisterForRadioOffOrNotAvailableNotificationGemini(Landroid/os/Handler;I)V
    .locals 1

    .prologue
    .line 1688
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRadioOffOrNotAvailableNotification(Landroid/os/Handler;)V

    .line 1689
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2458
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    .line 2459
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2674
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 2675
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 1938
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 1866
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2434
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 2435
    return-void
.end method

.method public unregisterForSignalInfoGemini(Landroid/os/Handler;I)V
    .locals 1

    .prologue
    .line 1680
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1681
    return-void
.end method

.method public unregisterForSimModeChange(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->av:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1169
    return-void
.end method

.method public unregisterForSpeechInfo(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 2586
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->e(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2587
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 1922
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 1890
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 1874
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2482
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    .line 2483
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2474
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    .line 2475
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1801
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->b(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 1802
    return-void
.end method

.method public unregisterForVoLteConferenceCallNotification(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVoLteConferenceCallNotification(Landroid/os/Handler;)V

    .line 2629
    return-void
.end method

.method public unregisterForVoiceCallIncomingIndication(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2620
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVoiceCallIncomingIndication(Landroid/os/Handler;)V

    .line 2621
    return-void
.end method

.method public unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2611
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V

    .line 2612
    return-void
.end method

.method public unregisterForVtRingInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2603
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtRingInfo(Landroid/os/Handler;)V

    .line 2604
    return-void
.end method

.method public unregisterForVtStatusInfo(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2595
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtStatusInfo(Landroid/os/Handler;)V

    .line 2596
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 2498
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 2499
    return-void
.end method

.method public unsetOnEcbModeExitResponseGemini(Landroid/os/Handler;I)V
    .locals 1

    .prologue
    .line 1696
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 1697
    return-void
.end method

.method public updateMobileData(I)V
    .locals 2

    .prologue
    .line 2690
    packed-switch p1, :pswitch_data_0

    .line 2698
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_0

    .line 2699
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateMobileData()V

    .line 2698
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2695
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->am:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateMobileData()V

    .line 2703
    :cond_0
    return-void

    .line 2690
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updatePhoneObject(I)V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->updatePhoneObject(I)V

    .line 591
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 2230
    return-void
.end method

.method public updateSimIndicateState()V
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateSimIndicateState()V

    .line 1339
    return-void
.end method

.method public updateSimIndicateStateGemini(I)V
    .locals 1

    .prologue
    .line 1712
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateSimIndicateState()V

    .line 1713
    return-void
.end method

.method public vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->al:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method
