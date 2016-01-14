.class public Lcom/android/internal/telephony/SimDispatcher;
.super Landroid/os/Handler;
.source "SimDispatcher.java"

# interfaces
.implements Lcom/android/internal/telephony/ImsEventDispatcher$VaEventDispatcher;


# static fields
.field protected static final EVENT_SIM_AKA_AUTH_COMPLETE:I = 0x64

.field private static final READ_USIM_COMMAND_DATA_LENGTH:I = 0x40

.field private static final READ_USIM_COMMAND_IMSI:I = 0x0

.field private static final READ_USIM_COMMAND_PSISMSC:I = 0x1

.field private static final READ_USIM_COMMAND_SMSP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "[SimDispatcher]"

.field private static final USIM_AUTH_IMS_AKA_COMMAND_RES_LENGTH:I = 0x100

.field private static imsAdapt:Lcom/android/internal/telephony/ImsAdapter;

.field private static mIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

.field private static final mLock:Ljava/lang/Object;

.field private static mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimState:Ljava/lang/String;

.field private mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SimDispatcher;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "IO"    # Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 57
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/SimDispatcher;->mSimState:Ljava/lang/String;

    .line 139
    new-instance v1, Lcom/android/internal/telephony/SimDispatcher$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SimDispatcher$1;-><init>(Lcom/android/internal/telephony/SimDispatcher;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SimDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/SimDispatcher;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/internal/telephony/SimDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    .line 62
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/uicc/IccRecords;

    sput-object v1, Lcom/android/internal/telephony/SimDispatcher;->mIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    .line 63
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/uicc/UiccController;

    sput-object v1, Lcom/android/internal/telephony/SimDispatcher;->mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    .line 65
    const-string v1, "SimDispatcher()"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 67
    sget-object v1, Lcom/android/internal/telephony/SimDispatcher;->imsAdapt:Lcom/android/internal/telephony/ImsAdapter;

    if-nez v1, :cond_0

    .line 68
    const-string v1, "ImsAdapter.getInstance"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/android/internal/telephony/ImsAdapter;->getInstance()Lcom/android/internal/telephony/ImsAdapter;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/SimDispatcher;->imsAdapt:Lcom/android/internal/telephony/ImsAdapter;

    .line 72
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/SimDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/SimDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/SimDispatcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SimDispatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/internal/telephony/SimDispatcher;->mSimState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SimDispatcher;)Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SimDispatcher;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/telephony/SimDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    return-object v0
.end method

.method private readUsimData(II)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "transaction_id"    # I

    .prologue
    const/16 v11, 0x40

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 294
    new-instance v2, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    const v7, 0x187d7

    invoke-direct {v2, v7}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 295
    .local v2, "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    new-array v6, v11, [B

    .line 296
    .local v6, "resData":[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "transaction_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 298
    packed-switch p1, :pswitch_data_0

    .line 424
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readUsimData unknown type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 429
    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/SimDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->writeEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)I

    .line 430
    :goto_1
    return-void

    .line 301
    :pswitch_0
    const/4 v5, 0x0

    .line 302
    .local v5, "mncLength":I
    sget-object v7, Lcom/android/internal/telephony/SimDispatcher;->mIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v4

    .line 303
    .local v4, "imsi":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "imsi = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 304
    sget-object v7, Lcom/android/internal/telephony/SimDispatcher;->mIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccRecords;->getMncLength()I

    move-result v5

    .line 305
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MNC length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 307
    if-eqz v4, :cond_0

    if-gtz v5, :cond_1

    .line 308
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readUsimDataFail: ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 309
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SimDispatcher;->readUsimDataFail(II)V

    goto :goto_1

    .line 314
    :cond_1
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 317
    invoke-virtual {v2, v10}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 320
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 323
    invoke-virtual {v2, v10}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 326
    int-to-byte v7, v5

    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 329
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 330
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 331
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 335
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "imsi.length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 338
    invoke-virtual {v2, v4, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 342
    .end local v4    # "imsi":Ljava/lang/String;
    .end local v5    # "mncLength":I
    :pswitch_1
    sget-object v7, Lcom/android/internal/telephony/SimDispatcher;->mIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccRecords;->getEfPsismsc()[B

    move-result-object v0

    .line 344
    .local v0, "efPsismsc":[B
    if-nez v0, :cond_2

    .line 345
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readUsimDataFail: ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 346
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SimDispatcher;->readUsimDataFail(II)V

    goto/16 :goto_1

    .line 350
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v7, v0

    if-ge v3, v7, :cond_3

    .line 351
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, v0, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 350
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 355
    :cond_3
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 358
    invoke-virtual {v2, v10}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 361
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 364
    invoke-virtual {v2, v10}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 367
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 370
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 371
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 372
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 376
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 377
    array-length v7, v0

    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 379
    array-length v7, v0

    invoke-static {v0, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    goto/16 :goto_0

    .line 384
    .end local v0    # "efPsismsc":[B
    .end local v3    # "i":I
    :pswitch_2
    sget-object v7, Lcom/android/internal/telephony/SimDispatcher;->mIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccRecords;->getEfSmsp()[B

    move-result-object v1

    .line 385
    .local v1, "efSmsp":[B
    if-nez v1, :cond_4

    .line 386
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readUsimDataFail: ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 387
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SimDispatcher;->readUsimDataFail(II)V

    goto/16 :goto_1

    .line 391
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    array-length v7, v1

    if-ge v3, v7, :cond_5

    .line 392
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, v1, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 391
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 396
    :cond_5
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 399
    invoke-virtual {v2, v10}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 402
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 405
    invoke-virtual {v2, v10}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 408
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 411
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 412
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 413
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 417
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 418
    array-length v7, v1

    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 420
    array-length v7, v1

    invoke-static {v1, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    goto/16 :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private readUsimDataFail(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "transaction_id"    # I

    .prologue
    const/4 v3, 0x0

    .line 433
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    const v2, 0x187d7

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 434
    .local v0, "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const/16 v2, 0x40

    new-array v1, v2, [B

    .line 435
    .local v1, "pad":[B
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 438
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 441
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 444
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 447
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 450
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 451
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 452
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 456
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 458
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 461
    iget-object v2, p0, Lcom/android/internal/telephony/SimDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->writeEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)I

    .line 462
    return-void
.end method


# virtual methods
.method public VaEventCallback(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 23
    .param p1, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    .line 180
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v18

    .line 181
    .local v18, "request_id":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reqeust_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 183
    const/4 v3, 0x0

    .line 184
    .local v3, "p":Lcom/android/internal/telephony/gsm/GSMPhone;
    const/4 v15, 0x0

    .line 185
    .local v15, "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v16

    .line 186
    .local v16, "pp":Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, v16

    instance-of v5, v0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v5, :cond_0

    .line 187
    move-object/from16 v0, v16

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    move-object v15, v0

    .line 192
    .end local v16    # "pp":Lcom/android/internal/telephony/Phone;
    :goto_0
    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .end local v3    # "p":Lcom/android/internal/telephony/gsm/GSMPhone;
    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 193
    .restart local v3    # "p":Lcom/android/internal/telephony/gsm/GSMPhone;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phone object is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 195
    sparse-switch v18, :sswitch_data_0

    .line 284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 290
    .end local v3    # "p":Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v15    # "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    .end local v18    # "request_id":I
    :goto_1
    return-void

    .line 189
    .restart local v3    # "p":Lcom/android/internal/telephony/gsm/GSMPhone;
    .restart local v15    # "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    .restart local v16    # "pp":Lcom/android/internal/telephony/Phone;
    .restart local v18    # "request_id":I
    :cond_0
    check-cast v16, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local v16    # "pp":Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    .end local v15    # "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    check-cast v15, Lcom/android/internal/telephony/PhoneProxy;

    .restart local v15    # "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    goto :goto_0

    .line 197
    :sswitch_0
    const/4 v4, 0x0

    .line 198
    .local v4, "sessionId":I
    const/16 v17, 0x0

    .line 199
    .local v17, "randLen":I
    const/4 v10, 0x0

    .line 200
    .local v10, "autnLen":I
    const-string v7, ""

    .line 201
    .local v7, "strRand":Ljava/lang/String;
    const-string v8, ""

    .line 202
    .local v8, "strAuth":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v20

    .line 203
    .local v20, "transaction_id":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v17

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v10

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "transaction_id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rand Len =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Autn Len = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 211
    const/16 v5, 0x20

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v12

    .line 212
    .local v12, "byteRand":[B
    const/16 v5, 0x20

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v11

    .line 214
    .local v11, "byteAutn":[B
    if-lez v17, :cond_1

    .line 215
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    mul-int/lit8 v22, v17, 0x2

    move/from16 v0, v22

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 218
    :cond_1
    if-lez v10, :cond_2

    .line 219
    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    mul-int/lit8 v22, v10, 0x2

    move/from16 v0, v22

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 222
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM auth:RAND = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,AUTN = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 224
    const/16 v5, 0x64

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1, v6}, Lcom/android/internal/telephony/SimDispatcher;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .line 225
    .local v9, "result":Landroid/os/Message;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->doGeneralSimAuthentication(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 287
    .end local v3    # "p":Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v4    # "sessionId":I
    .end local v7    # "strRand":Ljava/lang/String;
    .end local v8    # "strAuth":Ljava/lang/String;
    .end local v9    # "result":Landroid/os/Message;
    .end local v10    # "autnLen":I
    .end local v11    # "byteAutn":[B
    .end local v12    # "byteRand":[B
    .end local v15    # "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    .end local v17    # "randLen":I
    .end local v18    # "request_id":I
    .end local v20    # "transaction_id":I
    :catch_0
    move-exception v13

    .line 288
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 229
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v3    # "p":Lcom/android/internal/telephony/gsm/GSMPhone;
    .restart local v15    # "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    .restart local v18    # "request_id":I
    :sswitch_1
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    :try_start_1
    sget v5, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v14, v5, :cond_5

    .line 230
    sget-object v5, Lcom/android/internal/telephony/SimDispatcher;->mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    aget-object v5, v5, v14

    if-nez v5, :cond_3

    .line 231
    sget-object v5, Lcom/android/internal/telephony/SimDispatcher;->mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v14}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v6

    aput-object v6, v5, v14

    .line 232
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUiccController: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/SimDispatcher;->mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    aget-object v6, v6, v14

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 235
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/SimDispatcher;->mIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v5, v5, v14

    if-nez v5, :cond_4

    .line 236
    sget-object v5, Lcom/android/internal/telephony/SimDispatcher;->mIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    sget-object v6, Lcom/android/internal/telephony/SimDispatcher;->mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    aget-object v6, v6, v14

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v6

    aput-object v6, v5, v14

    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIccRecordsInstance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/SimDispatcher;->mIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v6, v6, v14

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 229
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 241
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v20

    .line 242
    .restart local v20    # "transaction_id":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v21

    .line 244
    .local v21, "type":I
    sget-object v5, Lcom/android/internal/telephony/SimDispatcher;->mIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-eqz v5, :cond_6

    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readUsimData, type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SimDispatcher;->readUsimData(II)V

    goto/16 :goto_1

    .line 248
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readUsimDataFail: ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SimDispatcher;->readUsimDataFail(II)V

    goto/16 :goto_1

    .line 255
    .end local v14    # "i":I
    .end local v20    # "transaction_id":I
    .end local v21    # "type":I
    :sswitch_2
    new-instance v19, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    const v5, 0x187d5

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 256
    .local v19, "responseEvent":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v20

    .line 257
    .restart local v20    # "transaction_id":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "transaction_id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 262
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSimState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/SimDispatcher;->mSimState:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SimDispatcher;->mSimState:Ljava/lang/String;

    const-string v6, "LOADED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 265
    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 271
    :goto_3
    const/4 v5, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 274
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 277
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 280
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SimDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->writeEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)I

    goto/16 :goto_1

    .line 267
    :cond_7
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        0x187d4 -> :sswitch_2
        0x187d6 -> :sswitch_1
        0x187da -> :sswitch_0
    .end sparse-switch
.end method

.method public disableRequest()V
    .locals 1

    .prologue
    .line 82
    const-string v0, "disableRequest()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public enableRequest()V
    .locals 1

    .prologue
    .line 78
    const-string v0, "enableRequest()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 87
    sget-object v7, Lcom/android/internal/telephony/SimDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 88
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 89
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 134
    const-string v6, "[SimDispatcher]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Unknown Event "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_0
    monitor-exit v7

    .line 137
    return-void

    .line 91
    :pswitch_0
    const/4 v5, 0x0

    .line 92
    .local v5, "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    const/4 v3, 0x1

    .line 93
    .local v3, "isSuccess":I
    const-string v6, "SIM_AUTH_COMPLETE"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 94
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/uicc/IccIoResult;

    move-object v0, v6

    check-cast v0, Lcom/android/internal/telephony/uicc/IccIoResult;

    move-object v5, v0

    .line 95
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_0

    .line 96
    const/4 v3, 0x0

    .line 97
    const-string v6, "auth fail"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 100
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    const v6, 0x187db

    invoke-direct {v2, v6}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 103
    .local v2, "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    iget v6, p1, Landroid/os/Message;->arg1:I

    int-to-byte v6, v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trans ID = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 110
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 111
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 113
    if-eqz v5, :cond_1

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "response = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 118
    :cond_1
    const/16 v6, 0x100

    new-array v4, v6, [B

    .line 119
    .local v4, "resData":[B
    if-eqz v5, :cond_2

    iget-object v6, v5, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v6, :cond_2

    .line 120
    iget-object v6, v5, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v5, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v10, v10

    invoke-static {v6, v8, v4, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 128
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/SimDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->writeEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)I

    .line 130
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM_AUTH_COMPLETE result is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 136
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    .end local v3    # "isSuccess":I
    .end local v4    # "resData":[B
    .end local v5    # "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 124
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    .restart local v2    # "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    .restart local v3    # "isSuccess":I
    .restart local v4    # "resData":[B
    .restart local v5    # "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_2
    :try_start_1
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 465
    const-string v0, "[SimDispatcher]"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-void
.end method
