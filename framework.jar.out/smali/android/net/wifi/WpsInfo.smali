.class public Landroid/net/wifi/WpsInfo;
.super Ljava/lang/Object;
.source "WpsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WpsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISPLAY:I = 0x1

.field public static final INVALID:I = 0x4

.field public static final KEYPAD:I = 0x2

.field public static final LABEL:I = 0x3

.field public static final PBC:I


# instance fields
.field public BSSID:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public authentication:Ljava/lang/String;

.field public encryption:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public pin:Ljava/lang/String;

.field public setup:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Landroid/net/wifi/WpsInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WpsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x4

    iput v0, p0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 64
    iput-object v1, p0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Landroid/net/wifi/WpsInfo;->SSID:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Landroid/net/wifi/WpsInfo;->authentication:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Landroid/net/wifi/WpsInfo;->encryption:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Landroid/net/wifi/WpsInfo;->key:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WpsInfo;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    if-eqz p1, :cond_0

    .line 103
    iget v0, p1, Landroid/net/wifi/WpsInfo;->setup:I

    iput v0, p0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 104
    iget-object v0, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 107
    iget-object v0, p1, Landroid/net/wifi/WpsInfo;->SSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WpsInfo;->SSID:Ljava/lang/String;

    .line 108
    iget-object v0, p1, Landroid/net/wifi/WpsInfo;->authentication:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WpsInfo;->authentication:Ljava/lang/String;

    .line 109
    iget-object v0, p1, Landroid/net/wifi/WpsInfo;->encryption:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WpsInfo;->encryption:Ljava/lang/String;

    .line 110
    iget-object v0, p1, Landroid/net/wifi/WpsInfo;->key:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WpsInfo;->key:Ljava/lang/String;

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, " setup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 78
    const-string v1, " BSSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    const-string v1, " pin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    const-string v1, " SSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WpsInfo;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 85
    const-string v1, " authentication: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WpsInfo;->authentication:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 87
    const-string v1, " encryption: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WpsInfo;->encryption:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 89
    const-string v1, " key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WpsInfo;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 117
    iget v0, p0, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Landroid/net/wifi/WpsInfo;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Landroid/net/wifi/WpsInfo;->authentication:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Landroid/net/wifi/WpsInfo;->encryption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Landroid/net/wifi/WpsInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return-void
.end method
