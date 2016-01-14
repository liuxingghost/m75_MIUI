.class public Landroid/factory/test/WifiBluetoothTest;
.super Ljava/lang/Object;
.source "WifiBluetoothTest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiBluetoothTest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native enterTestModeNative()Z
.end method

.method private native enterWifiTestModeNative()Z
.end method

.method private native exitTestModeNative()Z
.end method

.method private native exitWifiTestModeNative()Z
.end method


# virtual methods
.method public enterTestMode()Z
    .locals 4

    .prologue
    .line 6
    const/4 v0, 0x0

    .line 8
    .local v0, "result":Z
    invoke-direct {p0}, Landroid/factory/test/WifiBluetoothTest;->enterTestModeNative()Z

    move-result v0

    .line 10
    const-string v1, "WifiBluetoothTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterTestMode result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return v0
.end method

.method public enterWifiTestMode()Z
    .locals 4

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 28
    .local v0, "result":Z
    invoke-direct {p0}, Landroid/factory/test/WifiBluetoothTest;->enterWifiTestModeNative()Z

    move-result v0

    .line 30
    const-string v1, "WifiBluetoothTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterWifiTestMode result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return v0
.end method

.method public exitTestMode()Z
    .locals 4

    .prologue
    .line 16
    const/4 v0, 0x0

    .line 18
    .local v0, "result":Z
    invoke-direct {p0}, Landroid/factory/test/WifiBluetoothTest;->exitTestModeNative()Z

    move-result v0

    .line 20
    const-string v1, "WifiBluetoothTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exitTestMode result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return v0
.end method

.method public exitWifiTestMode()Z
    .locals 4

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, "result":Z
    invoke-direct {p0}, Landroid/factory/test/WifiBluetoothTest;->exitWifiTestModeNative()Z

    move-result v0

    .line 40
    const-string v1, "WifiBluetoothTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exitWifiTestMode result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return v0
.end method
