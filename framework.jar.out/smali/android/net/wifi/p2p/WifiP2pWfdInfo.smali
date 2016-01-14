.class public Landroid/net/wifi/p2p/WifiP2pWfdInfo;
.super Ljava/lang/Object;
.source "WifiP2pWfdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final CONTENT_PROTECTION_SUPPORT:I = 0x100

.field private static final COUPLED_SINK_SUPPORT_AT_SINK:I = 0x8

.field private static final COUPLED_SINK_SUPPORT_AT_SOURCE:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pWfdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_TYPE:I = 0x3

.field private static final I2C_READ_WRITE_SUPPORT:I = 0x2

.field private static final PREFERRED_DISPLAY_SUPPORT:I = 0x4

.field public static final PRIMARY_SINK:I = 0x1

.field public static final SECONDARY_SINK:I = 0x2

.field private static final SESSION_AVAILABLE:I = 0x30

.field private static final SESSION_AVAILABLE_BIT1:I = 0x10

.field private static final SESSION_AVAILABLE_BIT2:I = 0x20

.field public static final SOURCE_OR_PRIMARY_SINK:I = 0x3

.field private static final STANDBY_RESUME_CONTROL_SUPPORT:I = 0x8

.field private static final TAG:Ljava/lang/String; = "WifiP2pWfdInfo"

.field private static final UIBC_SUPPORT:I = 0x1

.field public static final WFD_SOURCE:I


# instance fields
.field private mCtrlPort:I

.field private mDeviceInfo:I

.field private mExtCapa:I

.field private mMaxThroughput:I

.field private mWfdEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 282
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "devInfo"    # I
    .param p2, "ctrlPort"    # I
    .param p3, "maxTput"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    .line 72
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 73
    iput p2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    .line 74
    iput p3, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    .line 75
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "devInfo"    # I
    .param p2, "ctrlPort"    # I
    .param p3, "maxTput"    # I
    .param p4, "extCapa"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    .line 79
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 80
    iput p2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    .line 81
    iput p3, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    .line 82
    iput p4, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    if-eqz p1, :cond_0

    .line 256
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    .line 257
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 258
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    .line 259
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    .line 260
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    .line 262
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public getControlPort()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    return v0
.end method

.method public getDeviceInfoHex()Ljava/lang/String;
    .locals 5

    .prologue
    .line 229
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%04x%04x%04x%04x"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getExtCapaHex()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 234
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%04x%04x"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedCapability()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    return v0
.end method

.method public getMaxThroughput()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    return v0
.end method

.method public isContentProtected()Z
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCoupledSinkSupportedAtSink()Z
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCoupledSinkSupportedAtSource()Z
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isI2cRWSupported()Z
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreferredDisplaySupported()Z
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSessionAvailable()Z
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, 0x30

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStandbyResumeCtrlSupported()Z
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUibcSupported()Z
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWfdEnabled()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    .line 279
    return-void

    .line 274
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentProtected(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 147
    if-eqz p1, :cond_0

    .line 148
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    goto :goto_0
.end method

.method public setControlPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 217
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    .line 218
    return-void
.end method

.method public setCoupledSinkSupportAtSink(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 126
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    goto :goto_0
.end method

.method public setCoupledSinkSupportAtSource(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    goto :goto_0
.end method

.method public setDeviceType(I)Z
    .locals 2
    .param p1, "deviceType"    # I

    .prologue
    .line 98
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 100
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    const v1, 0xfffc

    and-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 102
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 103
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setI2cRWSupported(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 177
    if-eqz p1, :cond_0

    .line 178
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    goto :goto_0
.end method

.method public setMaxThroughput(I)V
    .locals 0
    .param p1, "maxThroughput"    # I

    .prologue
    .line 221
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    .line 222
    return-void
.end method

.method public setPreferredDisplaySupported(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 189
    if-eqz p1, :cond_0

    .line 190
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    goto :goto_0
.end method

.method public setSessionAvailable(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 138
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 139
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x31

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    goto :goto_0
.end method

.method public setStandbyResumeCtrlSupported(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 202
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    goto :goto_0
.end method

.method public setUibcSupported(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 165
    if-eqz p1, :cond_0

    .line 166
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    goto :goto_0
.end method

.method public setWfdEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 240
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "WFD enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 241
    const-string v1, "\n WFD DeviceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 242
    const-string v1, "\n WFD CtrlPort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 243
    const-string v1, "\n WFD MaxThroughput: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 244
    const-string v1, "\n WFD Extended Capability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 266
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    return-void

    .line 266
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
