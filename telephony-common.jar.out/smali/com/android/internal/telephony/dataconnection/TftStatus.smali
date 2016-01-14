.class public Lcom/android/internal/telephony/dataconnection/TftStatus;
.super Ljava/lang/Object;
.source "TftStatus.java"


# static fields
.field public static final OPCODE_ADD_PF:I = 0x3

.field public static final OPCODE_CREATE_NEW_TFT:I = 0x1

.field public static final OPCODE_DELETE_PF:I = 0x5

.field public static final OPCODE_DELETE_TFT:I = 0x2

.field public static final OPCODE_NOTFT_OP:I = 0x6

.field public static final OPCODE_REPLACE_PF:I = 0x4

.field public static final OPCODE_RESERVED:I = 0x7

.field public static final OPCODE_SPARE:I


# instance fields
.field public operation:I

.field public packetFilterInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;",
            ">;"
        }
    .end annotation
.end field

.field public tftParameter:Lcom/android/internal/telephony/dataconnection/TftParameter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/TftStatus;->operation:I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Lcom/android/internal/telephony/dataconnection/TftParameter;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/TftParameter;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TftStatus;->tftParameter:Lcom/android/internal/telephony/dataconnection/TftParameter;

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/internal/telephony/dataconnection/TftStatus;)V
    .locals 1
    .param p1, "tftStatus"    # Lcom/android/internal/telephony/dataconnection/TftStatus;

    .prologue
    .line 25
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/TftStatus;->operation:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/TftStatus;->operation:I

    .line 26
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    .line 27
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/TftStatus;->tftParameter:Lcom/android/internal/telephony/dataconnection/TftParameter;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TftStatus;->tftParameter:Lcom/android/internal/telephony/dataconnection/TftParameter;

    .line 28
    return-void
.end method

.method public readFrom(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/TftStatus;->reset()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/TftStatus;->operation:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 35
    .local v2, "pfNumber":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 36
    new-instance v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;-><init>()V

    .line 37
    .local v1, "pfInfo":Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->readFrom(Landroid/os/Parcel;)V

    .line 38
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    .end local v1    # "pfInfo":Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TftStatus;->tftParameter:Lcom/android/internal/telephony/dataconnection/TftParameter;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/dataconnection/TftParameter;->readFrom(Landroid/os/Parcel;)V

    .line 43
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->trimToSize()V

    .line 44
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/TftStatus;->operation:I

    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TftStatus;->tftParameter:Lcom/android/internal/telephony/dataconnection/TftParameter;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/TftParameter;->reset()V

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PacketFilterInfo[operation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/TftStatus;->operation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;

    .line 65
    .local v2, "pfInfo":Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 67
    .end local v2    # "pfInfo":Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "], TftParameter["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TftStatus;->tftParameter:Lcom/android/internal/telephony/dataconnection/TftParameter;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeTo(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 47
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/TftStatus;->operation:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;

    .line 50
    .local v1, "pfInfo":Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->writeTo(Landroid/os/Parcel;)V

    goto :goto_0

    .line 52
    .end local v1    # "pfInfo":Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TftStatus;->tftParameter:Lcom/android/internal/telephony/dataconnection/TftParameter;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/TftParameter;->writeTo(Landroid/os/Parcel;)V

    .line 53
    return-void
.end method
