.class public Lcom/android/internal/telephony/gemini/SimSwitchHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static v:Lcom/android/internal/telephony/gemini/SimSwitchHandler;


# instance fields
.field private A:Z

.field private B:Landroid/os/Message;

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private w:Z

.field private x:Lcom/android/internal/telephony/CommandsInterface;

.field private y:Lcom/android/internal/telephony/CommandsInterface;

.field private z:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/android/internal/telephony/gemini/f;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/f;-><init>(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->mHandler:Landroid/os/Handler;

    .line 179
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->w:Z

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimSwitchHandler created ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->w:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->log(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->C:Z

    return v0
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->C:Z

    return p1
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->D:Z

    return v0
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->D:Z

    return p1
.end method

.method static synthetic c(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->z:Z

    return v0
.end method

.method static synthetic c(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->E:Z

    return p1
.end method

.method static synthetic d(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 268
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->w:Z

    .line 269
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "Release SIM Switch wakelock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->log(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 274
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->x:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->y:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->B:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 281
    const-string v0, "SIM Switch send back response message"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->log(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->B:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 287
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM Switch swap done ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->w:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->log(Ljava/lang/String;)V

    .line 288
    iput-object v2, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->mContext:Landroid/content/Context;

    .line 289
    iput-object v2, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->B:Landroid/os/Message;

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->A:Z

    .line 291
    return-void

    .line 274
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic d(Lcom/android/internal/telephony/gemini/SimSwitchHandler;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->F:Z

    return p1
.end method

.method static synthetic e(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->y:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method private e()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 310
    const-string v1, "ril.simswitch.mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic f(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->x:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic g(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->d()V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/gemini/SimSwitchHandler;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->v:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    invoke-direct {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->v:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    .line 186
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->v:Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    return-object v0
.end method

.method static synthetic h(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->E:Z

    return v0
.end method

.method static synthetic i(Lcom/android/internal/telephony/gemini/SimSwitchHandler;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->F:Z

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 314
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimSwitchHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void
.end method


# virtual methods
.method public configSimSwitch(ZLcom/android/internal/telephony/gemini/GeminiPhone;)Z
    .locals 1

    .prologue
    .line 190
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->configSimSwitch(ZLcom/android/internal/telephony/gemini/GeminiPhone;Landroid/os/Message;)Z

    move-result v0

    .line 194
    :goto_0
    return v0

    .line 193
    :cond_0
    const-string v0, "Config SIM Switch mode fail due to non-dualtalk"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->log(Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public configSimSwitch(ZLcom/android/internal/telephony/gemini/GeminiPhone;Landroid/os/Message;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 198
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->w:Z

    if-ne p1, v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config SIM Switch mode but the same with current mode ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->w:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->log(Ljava/lang/String;)V

    .line 260
    :goto_0
    return v4

    .line 203
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->z:Z

    .line 206
    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 207
    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    .line 208
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v2, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->x:Lcom/android/internal/telephony/CommandsInterface;

    .line 209
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->y:Lcom/android/internal/telephony/CommandsInterface;

    .line 211
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->x:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    .line 213
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->y:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    .line 215
    iget-boolean v5, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->A:Z

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v5, :cond_2

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v2, v5, :cond_2

    .line 218
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->A:Z

    .line 219
    iput-object v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->mContext:Landroid/content/Context;

    .line 220
    iput-object p3, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->B:Landroid/os/Message;

    .line 221
    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 222
    const-string v1, "SIM_SWITCH_HANDLER"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 224
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    const-string v0, "Acquire SIM Switch wakelock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->log(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 229
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    iput-boolean v4, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->C:Z

    .line 247
    iput-boolean v4, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->D:Z

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->x:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPowerOff(Landroid/os/Message;)V

    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->y:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPowerOff(Landroid/os/Message;)V

    move v0, v3

    :goto_1
    move v4, v0

    .line 260
    goto/16 :goto_0

    .line 229
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 256
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Config SIM Switch but failed ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->A:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->log(Ljava/lang/String;)V

    move v0, v4

    goto :goto_1
.end method

.method public isSimSwitchSwapped()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->w:Z

    return v0
.end method
