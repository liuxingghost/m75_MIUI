.class final Lcom/android/server/wifi/WifiSettingsStore;
.super Ljava/lang/Object;
.source "WifiSettingsStore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiSettingsStore"

.field private static final WIFI_DISABLED:I = 0x0

.field private static final WIFI_DISABLED_AIRPLANE_ON:I = 0x3

.field private static final WIFI_ENABLED:I = 0x1

.field private static final WIFI_ENABLED_AIRPLANE_OVERRIDE:I = 0x2


# instance fields
.field private mAirplaneModeOn:Z

.field private mCheckSavedStateAtBoot:Z

.field private final mContext:Landroid/content/Context;

.field private mPersistWifiState:I

.field private mScanAlwaysAvailable:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    .line 47
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mCheckSavedStateAtBoot:Z

    .line 59
    iput-object p1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedAirplaneModeOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    .line 61
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedWifiState()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    .line 62
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedScanAlwaysAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mScanAlwaysAvailable:Z

    .line 63
    return-void
.end method

.method private getPersistedAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 207
    iget-object v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getPersistedScanAlwaysAvailable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 212
    iget-object v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_scan_always_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getPersistedWifiState()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v3, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 199
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "wifi_on"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 202
    :goto_0
    return v2

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "wifi_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private isAirplaneSensitive()Z
    .locals 3

    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isAirplaneToggleable()Z
    .locals 3

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "toggleableRadios":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private persistWifiState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 156
    .local v0, "cr":Landroid/content/ContentResolver;
    iput p1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    .line 157
    const-string v1, "wifi_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    return-void
.end method

.method private testAndClearWifiSavedState()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 184
    iget-object v4, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 185
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 187
    .local v1, "wifiSavedState":I
    :try_start_0
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 188
    if-ne v1, v2, :cond_0

    .line 189
    const-string v4, "wifi_saved_state"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_0
    :goto_0
    if-ne v1, v2, :cond_1

    :goto_1
    return v2

    :cond_1
    move v2, v3

    goto :goto_1

    .line 190
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPersistWifiState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAirplaneModeOn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method declared-synchronized handleAirplaneModeToggled(Z)Z
    .locals 5
    .param p1, "isAirplaneModeOn"    # Z

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x1

    .line 120
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneSensitive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 121
    const/4 v0, 0x0

    .line 142
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 125
    :cond_1
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    .line 126
    const-string v1, "WifiSettingsStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received ACTION_AIRPLANE_MODE_CHANGED, mAirplaneModeOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    if-eqz v1, :cond_2

    .line 129
    iget v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    if-ne v1, v0, :cond_0

    .line 130
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 134
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->testAndClearWifiSavedState()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    if-ne v1, v4, :cond_0

    .line 139
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized handleWifiScanAlwaysAvailableToggled()V
    .locals 1

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedScanAlwaysAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mScanAlwaysAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized handleWifiToggled(Z)Z
    .locals 3
    .param p1, "wifiEnabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 97
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneToggleable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 114
    :goto_0
    monitor-exit p0

    return v0

    .line 101
    :cond_0
    if-eqz p1, :cond_2

    .line 102
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    if-eqz v0, :cond_1

    .line 103
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V

    :goto_1
    move v0, v1

    .line 114
    goto :goto_0

    .line 105
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 112
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public hasConnectableAp()Z
    .locals 4

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedWifiState()I

    move-result v0

    .line 221
    .local v0, "persistedWifiState":I
    const-string v1, "WifiSettingsStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasConnectableAp, mPersistWifiState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 223
    :cond_0
    const/4 v1, 0x0

    .line 225
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method declared-synchronized isAirplaneModeOn()Z
    .locals 1

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isScanAlwaysAvailable()Z
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mScanAlwaysAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isWifiToggleEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 66
    monitor-enter p0

    :try_start_0
    const-string v2, "WifiSettingsStore"

    const-string v3, "isWifiToggleEnabled in"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mCheckSavedStateAtBoot:Z

    if-nez v2, :cond_1

    .line 68
    const-string v2, "WifiSettingsStore"

    const-string v3, "mCheckSavedStateAtBoot"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mCheckSavedStateAtBoot:Z

    .line 70
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->testAndClearWifiSavedState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    const-string v1, "WifiSettingsStore"

    const-string v2, "testAndClearWifiSavedState true"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 76
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    if-eqz v2, :cond_2

    .line 77
    iget v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 79
    :cond_2
    iget v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCheckSavedStateAtBoot(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mCheckSavedStateAtBoot:Z

    .line 230
    return-void
.end method
